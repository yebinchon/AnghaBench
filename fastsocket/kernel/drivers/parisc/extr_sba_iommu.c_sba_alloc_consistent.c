
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int sba_map_single (struct device*,void*,size_t,int ) ;

__attribute__((used)) static void *sba_alloc_consistent(struct device *hwdev, size_t size,
     dma_addr_t *dma_handle, gfp_t gfp)
{
 void *ret;

 if (!hwdev) {

  *dma_handle = 0;
  return ((void*)0);
 }

        ret = (void *) __get_free_pages(gfp, get_order(size));

 if (ret) {
  memset(ret, 0, size);
  *dma_handle = sba_map_single(hwdev, ret, size, 0);
 }

 return ret;
}
