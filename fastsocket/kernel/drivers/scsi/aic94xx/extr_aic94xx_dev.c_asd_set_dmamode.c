
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct TYPE_8__ {TYPE_3__* ap; } ;
struct domain_device {scalar_t__ dev_type; TYPE_4__ sata_dev; scalar_t__ lldd_dev; TYPE_2__* port; } ;
struct ata_device {int flags; int id; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_7__ {int lock; } ;
struct TYPE_6__ {TYPE_1__* ha; } ;
struct TYPE_5__ {struct asd_ha_struct* lldd_ha; } ;


 int ATA_DFLAG_NCQ_OFF ;
 int NUM_SATA_TAGS ;
 scalar_t__ SATA_DEV ;
 scalar_t__ SATA_PM_PORT ;
 int SATA_TAG_ALLOC_MASK ;
 int asd_ddbsite_write_byte (struct asd_ha_struct*,int,int ,unsigned long long) ;
 int asd_ddbsite_write_dword (struct asd_ha_struct*,int,int ,unsigned long long) ;
 scalar_t__ asd_init_sata_tag_ddb (struct domain_device*) ;
 scalar_t__ ata_id_has_ncq (int ) ;
 unsigned long long ata_id_queue_depth (int ) ;
 struct ata_device* sas_to_ata_dev (struct domain_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void asd_set_dmamode(struct domain_device *dev)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
 struct ata_device *ata_dev = sas_to_ata_dev(dev);
 int ddb = (int) (unsigned long) dev->lldd_dev;
 u32 qdepth = 0;

 if (dev->dev_type == SATA_DEV || dev->dev_type == SATA_PM_PORT) {
  if (ata_id_has_ncq(ata_dev->id))
   qdepth = ata_id_queue_depth(ata_dev->id);
  asd_ddbsite_write_dword(asd_ha, ddb, SATA_TAG_ALLOC_MASK,
     (1ULL<<qdepth)-1);
  asd_ddbsite_write_byte(asd_ha, ddb, NUM_SATA_TAGS, qdepth);
 }

 if (qdepth > 0)
  if (asd_init_sata_tag_ddb(dev) != 0) {
   unsigned long flags;

   spin_lock_irqsave(dev->sata_dev.ap->lock, flags);
   ata_dev->flags |= ATA_DFLAG_NCQ_OFF;
   spin_unlock_irqrestore(dev->sata_dev.ap->lock, flags);
  }
}
