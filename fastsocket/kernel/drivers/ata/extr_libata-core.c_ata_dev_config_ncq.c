
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_port {int flags; TYPE_2__* scsi_host; } ;
struct ata_device {int horkage; int id; int flags; TYPE_1__* link; } ;
struct TYPE_4__ {int can_queue; } ;
struct TYPE_3__ {struct ata_port* ap; } ;


 unsigned int AC_ERR_DEV ;
 int ATA_DFLAG_NCQ ;
 int ATA_FLAG_FPDMA_AA ;
 int ATA_FLAG_NCQ ;
 int ATA_HORKAGE_BROKEN_FPDMA_AA ;
 int ATA_HORKAGE_NONCQ ;
 scalar_t__ ATA_MAX_QUEUE ;
 int EIO ;
 int KERN_ERR ;
 int SATA_FPDMA_AA ;
 int SETFEATURES_SATA_ENABLE ;
 int ata_dev_printk (struct ata_device*,int ,char*,unsigned int) ;
 unsigned int ata_dev_set_feature (struct ata_device*,int ,int ) ;
 scalar_t__ ata_id_has_fpdma_aa (int ) ;
 int ata_id_has_ncq (int ) ;
 int ata_id_queue_depth (int ) ;
 int min (int ,scalar_t__) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int ata_dev_config_ncq(struct ata_device *dev,
          char *desc, size_t desc_sz)
{
 struct ata_port *ap = dev->link->ap;
 int hdepth = 0, ddepth = ata_id_queue_depth(dev->id);
 unsigned int err_mask;
 char *aa_desc = "";

 if (!ata_id_has_ncq(dev->id)) {
  desc[0] = '\0';
  return 0;
 }
 if (dev->horkage & ATA_HORKAGE_NONCQ) {
  snprintf(desc, desc_sz, "NCQ (not used)");
  return 0;
 }
 if (ap->flags & ATA_FLAG_NCQ) {
  hdepth = min(ap->scsi_host->can_queue, ATA_MAX_QUEUE - 1);
  dev->flags |= ATA_DFLAG_NCQ;
 }

 if (!(dev->horkage & ATA_HORKAGE_BROKEN_FPDMA_AA) &&
  (ap->flags & ATA_FLAG_FPDMA_AA) &&
  ata_id_has_fpdma_aa(dev->id)) {
  err_mask = ata_dev_set_feature(dev, SETFEATURES_SATA_ENABLE,
   SATA_FPDMA_AA);
  if (err_mask) {
   ata_dev_printk(dev, KERN_ERR, "failed to enable AA"
    "(error_mask=0x%x)\n", err_mask);
   if (err_mask != AC_ERR_DEV) {
    dev->horkage |= ATA_HORKAGE_BROKEN_FPDMA_AA;
    return -EIO;
   }
  } else
   aa_desc = ", AA";
 }

 if (hdepth >= ddepth)
  snprintf(desc, desc_sz, "NCQ (depth %d)%s", ddepth, aa_desc);
 else
  snprintf(desc, desc_sz, "NCQ (depth %d/%d)%s", hdepth,
   ddepth, aa_desc);
 return 0;
}
