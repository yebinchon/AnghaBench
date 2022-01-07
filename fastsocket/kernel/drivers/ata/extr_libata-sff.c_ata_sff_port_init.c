
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int sff_pio_task; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int ata_sff_pio_task ;

void ata_sff_port_init(struct ata_port *ap)
{
 INIT_DELAYED_WORK(&ap->sff_pio_task, ata_sff_pio_task);
}
