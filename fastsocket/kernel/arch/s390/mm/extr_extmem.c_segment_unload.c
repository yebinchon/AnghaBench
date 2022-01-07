
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcss_segment {int dcss_name; int list; scalar_t__ start_addr; scalar_t__ end; struct dcss_segment* res; int ref_count; } ;


 int MACHINE_IS_VM ;
 scalar_t__ atomic_dec_return (int *) ;
 int dcss_diag (int *,int ,unsigned long*,unsigned long*) ;
 int dcss_lock ;
 int kfree (struct dcss_segment*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char*) ;
 int purgeseg_scode ;
 int release_resource (struct dcss_segment*) ;
 struct dcss_segment* segment_by_name (char*) ;
 int vmem_remove_mapping (scalar_t__,scalar_t__) ;

void
segment_unload(char *name)
{
 unsigned long dummy;
 struct dcss_segment *seg;

 if (!MACHINE_IS_VM)
  return;

 mutex_lock(&dcss_lock);
 seg = segment_by_name (name);
 if (seg == ((void*)0)) {
  pr_err("Unloading unknown DCSS %s failed\n", name);
  goto out_unlock;
 }
 if (atomic_dec_return(&seg->ref_count) != 0)
  goto out_unlock;
 release_resource(seg->res);
 kfree(seg->res);
 vmem_remove_mapping(seg->start_addr, seg->end - seg->start_addr + 1);
 list_del(&seg->list);
 dcss_diag(&purgeseg_scode, seg->dcss_name, &dummy, &dummy);
 kfree(seg);
out_unlock:
 mutex_unlock(&dcss_lock);
}
