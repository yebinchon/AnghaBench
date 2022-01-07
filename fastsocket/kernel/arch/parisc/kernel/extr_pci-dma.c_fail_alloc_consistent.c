
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;



__attribute__((used)) static void *fail_alloc_consistent(struct device *dev, size_t size,
       dma_addr_t *dma_handle, gfp_t flag)
{
 return ((void*)0);
}
