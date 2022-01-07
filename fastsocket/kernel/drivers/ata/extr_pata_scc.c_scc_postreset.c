
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ctl_addr; } ;
struct ata_port {int ctl; TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_3__ {int (* sff_dev_select ) (struct ata_port*,int) ;} ;


 unsigned int ATA_DEV_NONE ;
 int DPRINTK (char*) ;
 int out_be32 (scalar_t__,int ) ;
 int stub1 (struct ata_port*,int) ;
 int stub2 (struct ata_port*,int) ;

__attribute__((used)) static void scc_postreset(struct ata_link *link, unsigned int *classes)
{
 struct ata_port *ap = link->ap;

 DPRINTK("ENTER\n");


 if (classes[0] != ATA_DEV_NONE)
  ap->ops->sff_dev_select(ap, 1);
 if (classes[1] != ATA_DEV_NONE)
  ap->ops->sff_dev_select(ap, 0);


 if (classes[0] == ATA_DEV_NONE && classes[1] == ATA_DEV_NONE) {
  DPRINTK("EXIT, no device\n");
  return;
 }


 if (ap->ioaddr.ctl_addr)
  out_be32(ap->ioaddr.ctl_addr, ap->ctl);

 DPRINTK("EXIT\n");
}
