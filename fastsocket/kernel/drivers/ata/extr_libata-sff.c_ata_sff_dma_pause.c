
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ altstatus_addr; } ;
struct ata_port {TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ sff_check_altstatus; } ;


 int BUG () ;
 int ata_sff_altstatus (struct ata_port*) ;

void ata_sff_dma_pause(struct ata_port *ap)
{
 if (ap->ops->sff_check_altstatus || ap->ioaddr.altstatus_addr) {


  ata_sff_altstatus(ap);
  return;
 }



 BUG();
}
