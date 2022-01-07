
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {scalar_t__ dma_base; } ;


 int inw (scalar_t__) ;

__attribute__((used)) static int trm290_dma_test_irq(ide_drive_t *drive)
{
 u16 status = inw(drive->hwif->dma_base + 2);

 return status == 0x00ff;
}
