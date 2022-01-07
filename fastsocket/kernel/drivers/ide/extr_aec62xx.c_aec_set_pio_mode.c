
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_8__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {TYPE_1__* port_ops; } ;
struct TYPE_6__ {int (* set_dma_mode ) (TYPE_3__*,scalar_t__ const) ;} ;


 scalar_t__ const XFER_PIO_0 ;
 int stub1 (TYPE_3__*,scalar_t__ const) ;

__attribute__((used)) static void aec_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 drive->hwif->port_ops->set_dma_mode(drive, pio + XFER_PIO_0);
}
