
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int valid_dma_direction (int) ;

__attribute__((used)) static void qib_unmap_sg(struct ib_device *dev,
    struct scatterlist *sg, int nents,
    enum dma_data_direction direction)
{
 BUG_ON(!valid_dma_direction(direction));
}
