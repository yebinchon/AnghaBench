
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_5__ {int irq_addr; } ;
struct TYPE_6__ {TYPE_1__ io_ports; } ;


 int z_writeb (int ,int ) ;

__attribute__((used)) static void xsurf_clear_irq(ide_drive_t *drive)
{



    z_writeb(0, drive->hwif->io_ports.irq_addr);
}
