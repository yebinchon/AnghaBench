
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_sg (struct device*,struct scatterlist*,int,int) ;
 struct scatterlist* scatterwalk_sg_next (struct scatterlist*) ;

__attribute__((used)) static void talitos_unmap_sg_chain(struct device *dev, struct scatterlist *sg,
       enum dma_data_direction dir)
{
 while (sg) {
  dma_unmap_sg(dev, sg, 1, dir);
  sg = scatterwalk_sg_next(sg);
 }
}
