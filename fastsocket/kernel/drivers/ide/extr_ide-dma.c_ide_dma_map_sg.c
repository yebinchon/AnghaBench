
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct ide_cmd {int tf_flags; int sg_nents; int orig_sg_nents; int sg_dma_direction; } ;
struct TYPE_4__ {int dev; struct scatterlist* sg_table; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int IDE_TFLAG_WRITE ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;

__attribute__((used)) static int ide_dma_map_sg(ide_drive_t *drive, struct ide_cmd *cmd)
{
 ide_hwif_t *hwif = drive->hwif;
 struct scatterlist *sg = hwif->sg_table;
 int i;

 if (cmd->tf_flags & IDE_TFLAG_WRITE)
  cmd->sg_dma_direction = DMA_TO_DEVICE;
 else
  cmd->sg_dma_direction = DMA_FROM_DEVICE;

 i = dma_map_sg(hwif->dev, sg, cmd->sg_nents, cmd->sg_dma_direction);
 if (i) {
  cmd->orig_sg_nents = cmd->sg_nents;
  cmd->sg_nents = i;
 }

 return i;
}
