
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int protocol; } ;
struct ata_queued_cmd {TYPE_1__ tf; int tag; struct ata_device* dev; } ;
struct ata_device {int flags; scalar_t__ udma_mask; scalar_t__ mwdma_mask; } ;


 int ATA_DFLAG_DUBIOUS_XFER ;
 scalar_t__ ata_is_nodata (int ) ;
 scalar_t__ ata_is_pio (int ) ;
 scalar_t__ ata_tag_internal (int ) ;

__attribute__((used)) static void ata_verify_xfer(struct ata_queued_cmd *qc)
{
 struct ata_device *dev = qc->dev;

 if (ata_tag_internal(qc->tag))
  return;

 if (ata_is_nodata(qc->tf.protocol))
  return;

 if ((dev->mwdma_mask || dev->udma_mask) && ata_is_pio(qc->tf.protocol))
  return;

 dev->flags &= ~ATA_DFLAG_DUBIOUS_XFER;
}
