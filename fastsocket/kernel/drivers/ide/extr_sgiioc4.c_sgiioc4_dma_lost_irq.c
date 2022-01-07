
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ide_drive_t ;


 int ide_dma_lost_irq (int *) ;
 int sgiioc4_resetproc (int *) ;

__attribute__((used)) static void sgiioc4_dma_lost_irq(ide_drive_t *drive)
{
 sgiioc4_resetproc(drive);

 ide_dma_lost_irq(drive);
}
