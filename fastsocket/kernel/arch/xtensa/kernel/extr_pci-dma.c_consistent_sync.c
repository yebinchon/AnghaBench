
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;




 int __flush_invalidate_dcache_range (unsigned long,unsigned long) ;
 int __invalidate_dcache_range (unsigned long,unsigned long) ;

void consistent_sync(void *vaddr, size_t size, int direction)
{
 switch (direction) {
 case 129:
  BUG();
 case 130:
  __invalidate_dcache_range((unsigned long)vaddr,
              (unsigned long)size);
  break;

 case 128:
 case 131:
  __flush_invalidate_dcache_range((unsigned long)vaddr,
          (unsigned long)size);
  break;
 }
}
