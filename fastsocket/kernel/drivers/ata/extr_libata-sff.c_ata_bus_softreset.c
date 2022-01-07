
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ioports {int ctl_addr; } ;
struct ata_port {int ctl; int last_ctl; int link; int print_id; struct ata_ioports ioaddr; } ;


 int ATA_SRST ;
 int DPRINTK (char*,int ) ;
 int ata_sff_wait_after_reset (int *,unsigned int,unsigned long) ;
 int iowrite8 (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ata_bus_softreset(struct ata_port *ap, unsigned int devmask,
        unsigned long deadline)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 DPRINTK("ata%u: bus reset via SRST\n", ap->print_id);


 iowrite8(ap->ctl, ioaddr->ctl_addr);
 udelay(20);
 iowrite8(ap->ctl | ATA_SRST, ioaddr->ctl_addr);
 udelay(20);
 iowrite8(ap->ctl, ioaddr->ctl_addr);
 ap->last_ctl = ap->ctl;


 return ata_sff_wait_after_reset(&ap->link, devmask, deadline);
}
