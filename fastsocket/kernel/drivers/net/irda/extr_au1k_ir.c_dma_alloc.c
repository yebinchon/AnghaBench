
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int GFP_DMA ;
 scalar_t__ KSEG0ADDR (void*) ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_bus (void*) ;

__attribute__((used)) static void *dma_alloc(size_t size, dma_addr_t * dma_handle)
{
 void *ret;
 int gfp = GFP_ATOMIC | GFP_DMA;

 ret = (void *) __get_free_pages(gfp, get_order(size));

 if (ret != ((void*)0)) {
  memset(ret, 0, size);
  *dma_handle = virt_to_bus(ret);
  ret = (void *)KSEG0ADDR(ret);
 }
 return ret;
}
