
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int sba_unmap_page (struct device*,int ,size_t,int,struct dma_attrs*) ;

void sba_unmap_single_attrs(struct device *dev, dma_addr_t iova, size_t size,
       enum dma_data_direction dir, struct dma_attrs *attrs)
{
 sba_unmap_page(dev, iova, size, dir, attrs);
}
