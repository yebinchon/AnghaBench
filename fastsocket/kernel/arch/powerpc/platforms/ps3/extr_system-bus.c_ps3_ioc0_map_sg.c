
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct dma_attrs {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG () ;

__attribute__((used)) static int ps3_ioc0_map_sg(struct device *_dev, struct scatterlist *sg,
      int nents,
      enum dma_data_direction direction,
      struct dma_attrs *attrs)
{
 BUG();
 return 0;
}
