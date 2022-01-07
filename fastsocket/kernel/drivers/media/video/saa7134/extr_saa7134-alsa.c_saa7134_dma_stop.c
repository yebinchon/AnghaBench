
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_blk; scalar_t__ dma_running; } ;
struct saa7134_dev {TYPE_1__ dmasound; } ;


 int saa7134_set_dmabits (struct saa7134_dev*) ;

__attribute__((used)) static void saa7134_dma_stop(struct saa7134_dev *dev)
{
 dev->dmasound.dma_blk = -1;
 dev->dmasound.dma_running = 0;
 saa7134_set_dmabits(dev);
}
