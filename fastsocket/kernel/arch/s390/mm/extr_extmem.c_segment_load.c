
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcss_segment {int do_nonshared; unsigned long start_addr; unsigned long end; int vm_segtype; int ref_count; } ;


 int ENOSYS ;
 int EPERM ;
 int MACHINE_IS_VM ;
 int __segment_load (char*,int,unsigned long*,unsigned long*) ;
 int atomic_inc (int *) ;
 int dcss_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct dcss_segment* segment_by_name (char*) ;

int
segment_load (char *name, int do_nonshared, unsigned long *addr,
  unsigned long *end)
{
 struct dcss_segment *seg;
 int rc;

 if (!MACHINE_IS_VM)
  return -ENOSYS;

 mutex_lock(&dcss_lock);
 seg = segment_by_name (name);
 if (seg == ((void*)0))
  rc = __segment_load (name, do_nonshared, addr, end);
 else {
  if (do_nonshared == seg->do_nonshared) {
   atomic_inc(&seg->ref_count);
   *addr = seg->start_addr;
   *end = seg->end;
   rc = seg->vm_segtype;
  } else {
   *addr = *end = 0;
   rc = -EPERM;
  }
 }
 mutex_unlock(&dcss_lock);
 return rc;
}
