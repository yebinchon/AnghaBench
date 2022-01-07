
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_table {int nents; int sgl; } ;
struct dma_buf_attachment {int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_sg (int ,int ,int ,int) ;
 int kfree (struct sg_table*) ;
 int sg_free_table (struct sg_table*) ;

__attribute__((used)) static void i915_gem_unmap_dma_buf(struct dma_buf_attachment *attachment,
       struct sg_table *sg,
       enum dma_data_direction dir)
{
 dma_unmap_sg(attachment->dev, sg->sgl, sg->nents, dir);
 sg_free_table(sg);
 kfree(sg);
}
