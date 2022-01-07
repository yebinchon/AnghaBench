
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcss_segment {int do_nonshared; scalar_t__ vm_segtype; unsigned long start_addr; unsigned long end; int dcss_name; int list; struct dcss_segment* res; int flags; int ref_count; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int IORESOURCE_READONLY ;
 scalar_t__ SEG_TYPE_ER ;
 scalar_t__ SEG_TYPE_SR ;
 int atomic_read (int *) ;
 int dcss_diag (int *,int ,unsigned long*,unsigned long*) ;
 int dcss_diag_translate_rc (unsigned long) ;
 int dcss_lock ;
 int iomem_resource ;
 int kfree (struct dcss_segment*) ;
 int list_del (int *) ;
 int loadnsr_scode ;
 int loadshr_scode ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char*) ;
 int pr_warning (char*,char*,...) ;
 int purgeseg_scode ;
 int release_resource (struct dcss_segment*) ;
 scalar_t__ request_resource (int *,struct dcss_segment*) ;
 struct dcss_segment* segment_by_name (char*) ;
 int vmem_remove_mapping (unsigned long,unsigned long) ;

int
segment_modify_shared (char *name, int do_nonshared)
{
 struct dcss_segment *seg;
 unsigned long start_addr, end_addr, dummy;
 int rc, diag_cc;

 mutex_lock(&dcss_lock);
 seg = segment_by_name (name);
 if (seg == ((void*)0)) {
  rc = -EINVAL;
  goto out_unlock;
 }
 if (do_nonshared == seg->do_nonshared) {
  pr_info("DCSS %s is already in the requested access "
   "mode\n", name);
  rc = 0;
  goto out_unlock;
 }
 if (atomic_read (&seg->ref_count) != 1) {
  pr_warning("DCSS %s is in use and cannot be reloaded\n",
      name);
  rc = -EAGAIN;
  goto out_unlock;
 }
 release_resource(seg->res);
 if (do_nonshared)
  seg->res->flags &= ~IORESOURCE_READONLY;
 else
  if (seg->vm_segtype == SEG_TYPE_SR ||
      seg->vm_segtype == SEG_TYPE_ER)
   seg->res->flags |= IORESOURCE_READONLY;

 if (request_resource(&iomem_resource, seg->res)) {
  pr_warning("DCSS %s overlaps with used memory resources "
      "and cannot be reloaded\n", name);
  rc = -EBUSY;
  kfree(seg->res);
  goto out_del_mem;
 }

 dcss_diag(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
 if (do_nonshared)
  diag_cc = dcss_diag(&loadnsr_scode, seg->dcss_name,
    &start_addr, &end_addr);
 else
  diag_cc = dcss_diag(&loadshr_scode, seg->dcss_name,
    &start_addr, &end_addr);
 if (diag_cc < 0) {
  rc = diag_cc;
  goto out_del_res;
 }
 if (diag_cc > 1) {
  pr_warning("Reloading DCSS %s failed with rc=%ld\n", name,
      end_addr);
  rc = dcss_diag_translate_rc(end_addr);
  goto out_del_res;
 }
 seg->start_addr = start_addr;
 seg->end = end_addr;
 seg->do_nonshared = do_nonshared;
 rc = 0;
 goto out_unlock;
 out_del_res:
 release_resource(seg->res);
 kfree(seg->res);
 out_del_mem:
 vmem_remove_mapping(seg->start_addr, seg->end - seg->start_addr + 1);
 list_del(&seg->list);
 dcss_diag(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
 kfree(seg);
 out_unlock:
 mutex_unlock(&dcss_lock);
 return rc;
}
