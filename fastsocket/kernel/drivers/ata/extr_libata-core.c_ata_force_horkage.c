
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int horkage_on; int horkage_off; int name; } ;
struct ata_force_ent {int port; int device; TYPE_2__ param; } ;
struct ata_device {int devno; int horkage; TYPE_3__* link; } ;
struct TYPE_6__ {int pmp; TYPE_1__* ap; } ;
struct TYPE_4__ {int print_id; } ;


 int KERN_NOTICE ;
 int ata_dev_printk (struct ata_device*,int ,char*,int ) ;
 struct ata_force_ent* ata_force_tbl ;
 int ata_force_tbl_size ;
 scalar_t__ ata_is_host_link (TYPE_3__*) ;

__attribute__((used)) static void ata_force_horkage(struct ata_device *dev)
{
 int devno = dev->link->pmp + dev->devno;
 int alt_devno = devno;
 int i;


 if (ata_is_host_link(dev->link))
  alt_devno += 15;

 for (i = 0; i < ata_force_tbl_size; i++) {
  const struct ata_force_ent *fe = &ata_force_tbl[i];

  if (fe->port != -1 && fe->port != dev->link->ap->print_id)
   continue;

  if (fe->device != -1 && fe->device != devno &&
      fe->device != alt_devno)
   continue;

  if (!(~dev->horkage & fe->param.horkage_on) &&
      !(dev->horkage & fe->param.horkage_off))
   continue;

  dev->horkage |= fe->param.horkage_on;
  dev->horkage &= ~fe->param.horkage_off;

  ata_dev_printk(dev, KERN_NOTICE,
   "FORCE: horkage modified (%s)\n", fe->param.name);
 }
}
