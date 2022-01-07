
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * device; } ;
struct ata_port {unsigned int flags; TYPE_1__ link; } ;
struct ata_link {struct ata_port* ap; } ;


 unsigned int ATA_FLAG_SLAVE_POSS ;
 int EIO ;
 int KERN_ERR ;
 int ata_port_printk (struct ata_port*,int ,char*,unsigned int) ;
 unsigned int ata_sff_dev_classify (int *,unsigned int,int*) ;
 unsigned int bfin_bus_softreset (struct ata_port*,unsigned int) ;
 int bfin_dev_select (struct ata_port*,int ) ;
 scalar_t__ bfin_devchk (struct ata_port*,int) ;

__attribute__((used)) static int bfin_softreset(struct ata_link *link, unsigned int *classes,
     unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 unsigned int slave_possible = ap->flags & ATA_FLAG_SLAVE_POSS;
 unsigned int devmask = 0, err_mask;
 u8 err;


 if (bfin_devchk(ap, 0))
  devmask |= (1 << 0);
 if (slave_possible && bfin_devchk(ap, 1))
  devmask |= (1 << 1);


 bfin_dev_select(ap, 0);


 err_mask = bfin_bus_softreset(ap, devmask);
 if (err_mask) {
  ata_port_printk(ap, KERN_ERR, "SRST failed (err_mask=0x%x)\n",
    err_mask);
  return -EIO;
 }


 classes[0] = ata_sff_dev_classify(&ap->link.device[0],
    devmask & (1 << 0), &err);
 if (slave_possible && err != 0x81)
  classes[1] = ata_sff_dev_classify(&ap->link.device[1],
     devmask & (1 << 1), &err);

 return 0;
}
