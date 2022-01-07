
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (size_t) ;
 int massage_gfp_flags (struct device*,int ) ;
 int memset (void*,int ,size_t) ;
 int plat_map_dma_mem (struct device*,void*,size_t) ;

void *dma_alloc_noncoherent(struct device *dev, size_t size,
 dma_addr_t * dma_handle, gfp_t gfp)
{
 void *ret;

 gfp = massage_gfp_flags(dev, gfp);

 ret = (void *) __get_free_pages(gfp, get_order(size));

 if (ret != ((void*)0)) {
  memset(ret, 0, size);
  *dma_handle = plat_map_dma_mem(dev, ret, size);
 }

 return ret;
}
