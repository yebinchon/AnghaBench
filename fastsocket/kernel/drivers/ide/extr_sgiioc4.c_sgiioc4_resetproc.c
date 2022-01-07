
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ide_cmd {int dummy; } ;
struct TYPE_8__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_7__ {struct ide_cmd cmd; } ;


 int ide_dma_unmap_sg (TYPE_2__*,struct ide_cmd*) ;
 int sgiioc4_clearirq (TYPE_2__*) ;
 int sgiioc4_dma_end (TYPE_2__*) ;

__attribute__((used)) static void sgiioc4_resetproc(ide_drive_t *drive)
{
 struct ide_cmd *cmd = &drive->hwif->cmd;

 sgiioc4_dma_end(drive);
 ide_dma_unmap_sg(drive, cmd);
 sgiioc4_clearirq(drive);
}
