
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_map_ops {int dummy; } ;
struct device {int dummy; } ;


 struct dma_map_ops* dma_ops ;

struct dma_map_ops *dma_get_ops(struct device *dev)
{
 return dma_ops;
}
