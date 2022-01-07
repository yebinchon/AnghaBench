
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ide_cmd {int dummy; } ;
struct TYPE_7__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_5__ {int data_addr; } ;
struct TYPE_6__ {TYPE_1__ io_ports; } ;


 int mm_outsw (int ,void*,unsigned int) ;

__attribute__((used)) static void h8300_output_data(ide_drive_t *drive, struct ide_cmd *cmd,
         void *buf, unsigned int len)
{
 mm_outsw(drive->hwif->io_ports.data_addr, buf, (len + 1) / 2);
}
