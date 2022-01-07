
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct esp {int dev; } ;


 int dma_map_sg (int ,struct scatterlist*,int,int) ;

__attribute__((used)) static int sun3x_esp_map_sg(struct esp *esp, struct scatterlist *sg,
      int num_sg, int dir)
{
 return dma_map_sg(esp->dev, sg, num_sg, dir);
}
