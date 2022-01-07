
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 int sgiioc4_checkirq (int ) ;

__attribute__((used)) static int sgiioc4_dma_test_irq(ide_drive_t *drive)
{
 return sgiioc4_checkirq(drive->hwif);
}
