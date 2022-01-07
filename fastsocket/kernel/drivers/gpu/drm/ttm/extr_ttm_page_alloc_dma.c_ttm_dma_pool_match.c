
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void dma_pool ;
struct device {int dummy; } ;



__attribute__((used)) static int ttm_dma_pool_match(struct device *dev, void *res, void *match_data)
{
 return *(struct dma_pool **)res == match_data;
}
