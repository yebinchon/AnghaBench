
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_mm; } ;
struct TYPE_2__ {int context; } ;


 int BUG_ON (int) ;
 int flush_cache_all () ;
 int flush_user_dcache_range (unsigned long,unsigned long) ;
 int flush_user_icache_range (unsigned long,unsigned long) ;
 int mfsp (int) ;

void flush_cache_range(struct vm_area_struct *vma,
  unsigned long start, unsigned long end)
{
 int sr3;

 BUG_ON(!vma->vm_mm->context);

 sr3 = mfsp(3);
 if (vma->vm_mm->context == sr3) {
  flush_user_dcache_range(start,end);
  flush_user_icache_range(start,end);
 } else {
  flush_cache_all();
 }
}
