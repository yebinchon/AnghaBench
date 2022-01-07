
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct esp {int dev; } ;


 int dma_unmap_sg (int ,struct scatterlist*,int,int) ;

__attribute__((used)) static void jazz_esp_unmap_sg(struct esp *esp, struct scatterlist *sg,
         int num_sg, int dir)
{
 dma_unmap_sg(esp->dev, sg, num_sg, dir);
}
