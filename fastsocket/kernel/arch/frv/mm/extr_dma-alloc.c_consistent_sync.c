
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;




 int frv_cache_invalidate (unsigned long,unsigned long) ;
 int frv_dcache_writeback (unsigned long,unsigned long) ;

void consistent_sync(void *vaddr, size_t size, int direction)
{
 unsigned long start = (unsigned long) vaddr;
 unsigned long end = start + size;

 switch (direction) {
 case 129:
  BUG();
 case 130:
  frv_cache_invalidate(start, end);
  break;
 case 128:
  frv_dcache_writeback(start, end);
  break;
 case 131:
  frv_dcache_writeback(start, end);
  break;
 }
}
