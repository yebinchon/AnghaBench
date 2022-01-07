
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_ioports {int lbal_addr; int nsect_addr; } ;
struct ata_port {TYPE_1__* ops; struct ata_ioports ioaddr; } ;
struct ata_link {struct ata_port* ap; } ;
struct TYPE_2__ {int (* sff_dev_select ) (struct ata_port*,int) ;} ;


 int ENODEV ;
 int ata_msleep (struct ata_port*,int) ;
 int ata_sff_wait_ready (struct ata_link*,unsigned long) ;
 int in_be32 (int ) ;
 int stub1 (struct ata_port*,int) ;
 int stub2 (struct ata_port*,int) ;
 int stub3 (struct ata_port*,int) ;
 int stub4 (struct ata_port*,int) ;

int scc_wait_after_reset(struct ata_link *link, unsigned int devmask,
    unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct ata_ioports *ioaddr = &ap->ioaddr;
 unsigned int dev0 = devmask & (1 << 0);
 unsigned int dev1 = devmask & (1 << 1);
 int rc, ret = 0;
 ata_msleep(ap, 150);


 rc = ata_sff_wait_ready(link, deadline);



 if (rc)
  return rc;




 if (dev1) {
  int i;

  ap->ops->sff_dev_select(ap, 1);





  for (i = 0; i < 2; i++) {
   u8 nsect, lbal;

   nsect = in_be32(ioaddr->nsect_addr);
   lbal = in_be32(ioaddr->lbal_addr);
   if ((nsect == 1) && (lbal == 1))
    break;
   ata_msleep(ap, 50);
  }

  rc = ata_sff_wait_ready(link, deadline);
  if (rc) {
   if (rc != -ENODEV)
    return rc;
   ret = rc;
  }
 }


 ap->ops->sff_dev_select(ap, 0);
 if (dev1)
  ap->ops->sff_dev_select(ap, 1);
 if (dev0)
  ap->ops->sff_dev_select(ap, 0);

 return ret;
}
