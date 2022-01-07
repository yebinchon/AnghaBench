
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;



 scalar_t__ P1SEGADDR (unsigned long) ;
 int __flush_invalidate_region (void*,size_t) ;
 int __flush_purge_region (void*,size_t) ;
 int __flush_wback_region (void*,size_t) ;

void dma_cache_sync(struct device *dev, void *vaddr, size_t size,
      enum dma_data_direction direction)
{



 void *p1addr = (void*) P1SEGADDR((unsigned long)vaddr);


 switch (direction) {
 case 129:
  __flush_invalidate_region(p1addr, size);
  break;
 case 128:
  __flush_wback_region(p1addr, size);
  break;
 case 130:
  __flush_purge_region(p1addr, size);
  break;
 default:
  BUG();
 }
}
