
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int name; int xfer_mask; } ;
struct ata_force_ent {int port; int device; TYPE_2__ param; } ;
struct ata_device {int devno; unsigned long udma_mask; unsigned long mwdma_mask; unsigned long pio_mask; TYPE_3__* link; } ;
struct TYPE_6__ {int pmp; TYPE_1__* ap; } ;
struct TYPE_4__ {int print_id; } ;


 int KERN_NOTICE ;
 int ata_dev_printk (struct ata_device*,int ,char*,int ) ;
 struct ata_force_ent* ata_force_tbl ;
 int ata_force_tbl_size ;
 scalar_t__ ata_is_host_link (TYPE_3__*) ;
 int ata_unpack_xfermask (int ,unsigned long*,unsigned long*,unsigned long*) ;

__attribute__((used)) static void ata_force_xfermask(struct ata_device *dev)
{
 int devno = dev->link->pmp + dev->devno;
 int alt_devno = devno;
 int i;


 if (ata_is_host_link(dev->link))
  alt_devno += 15;

 for (i = ata_force_tbl_size - 1; i >= 0; i--) {
  const struct ata_force_ent *fe = &ata_force_tbl[i];
  unsigned long pio_mask, mwdma_mask, udma_mask;

  if (fe->port != -1 && fe->port != dev->link->ap->print_id)
   continue;

  if (fe->device != -1 && fe->device != devno &&
      fe->device != alt_devno)
   continue;

  if (!fe->param.xfer_mask)
   continue;

  ata_unpack_xfermask(fe->param.xfer_mask,
        &pio_mask, &mwdma_mask, &udma_mask);
  if (udma_mask)
   dev->udma_mask = udma_mask;
  else if (mwdma_mask) {
   dev->udma_mask = 0;
   dev->mwdma_mask = mwdma_mask;
  } else {
   dev->udma_mask = 0;
   dev->mwdma_mask = 0;
   dev->pio_mask = pio_mask;
  }

  ata_dev_printk(dev, KERN_NOTICE,
   "FORCE: xfer_mask set to %s\n", fe->param.name);
  return;
 }
}
