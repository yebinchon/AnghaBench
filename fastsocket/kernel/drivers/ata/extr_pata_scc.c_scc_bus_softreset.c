
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_ioports {int ctl_addr; } ;
struct ata_port {int ctl; int link; int print_id; struct ata_ioports ioaddr; } ;


 int ATA_SRST ;
 int DPRINTK (char*,int ) ;
 int out_be32 (int ,int) ;
 int scc_wait_after_reset (int *,unsigned int,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static unsigned int scc_bus_softreset(struct ata_port *ap, unsigned int devmask,
                                      unsigned long deadline)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;

 DPRINTK("ata%u: bus reset via SRST\n", ap->print_id);


 out_be32(ioaddr->ctl_addr, ap->ctl);
 udelay(20);
 out_be32(ioaddr->ctl_addr, ap->ctl | ATA_SRST);
 udelay(20);
 out_be32(ioaddr->ctl_addr, ap->ctl);

 scc_wait_after_reset(&ap->link, devmask, deadline);

 return 0;
}
