
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int BUG () ;
 long XCHAL_KSEG_BYPASS_VADDR ;
 long XCHAL_KSEG_CACHED_VADDR ;
 long XCHAL_KSEG_SIZE ;
 int free_pages (long,int ) ;
 int get_order (size_t) ;

void dma_free_coherent(struct device *hwdev, size_t size,
    void *vaddr, dma_addr_t dma_handle)
{
 long addr=(long)vaddr+XCHAL_KSEG_CACHED_VADDR-XCHAL_KSEG_BYPASS_VADDR;

 if (addr < 0 || addr >= XCHAL_KSEG_SIZE)
  BUG();

 free_pages(addr, get_order(size));
}
