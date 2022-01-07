
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG () ;



 scalar_t__ P2SEG ;
 scalar_t__ PXSEG (void*) ;
 int clean_dcache_region (void*,size_t) ;
 int flush_dcache_region (void*,size_t) ;
 int invalidate_dcache_region (void*,size_t) ;

void dma_cache_sync(struct device *dev, void *vaddr, size_t size, int direction)
{



 if (PXSEG(vaddr) == P2SEG)
  return;

 switch (direction) {
 case 129:
  invalidate_dcache_region(vaddr, size);
  break;
 case 128:
  clean_dcache_region(vaddr, size);
  break;
 case 130:
  flush_dcache_region(vaddr, size);
  break;
 default:
  BUG();
 }
}
