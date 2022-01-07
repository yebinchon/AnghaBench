
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int ata_port_start (struct ata_port*) ;

int ata_sff_port_start(struct ata_port *ap)
{
 if (ap->ioaddr.bmdma_addr)
  return ata_port_start(ap);
 return 0;
}
