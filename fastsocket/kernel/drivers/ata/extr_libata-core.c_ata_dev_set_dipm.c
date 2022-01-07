
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_port {int flags; int pm_policy; } ;
struct ata_link {struct ata_port* ap; } ;
struct ata_device {int flags; struct ata_link* link; } ;
typedef enum link_pm { ____Placeholder_link_pm } link_pm ;


 int ATA_DFLAG_DIPM ;
 int ATA_FLAG_IPM ;
 int EINVAL ;




 int SATA_DIPM ;
 int SCR_CONTROL ;
 int SETFEATURES_SATA_ENABLE ;
 int ata_dev_enabled (struct ata_device*) ;
 unsigned int ata_dev_set_feature (struct ata_device*,int ,int ) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_scr_write (struct ata_link*,int ,int) ;

__attribute__((used)) static int ata_dev_set_dipm(struct ata_device *dev, enum link_pm policy)
{
 struct ata_link *link = dev->link;
 struct ata_port *ap = link->ap;
 u32 scontrol;
 unsigned int err_mask;
 int rc;
 if (!(ap->flags & ATA_FLAG_IPM) || !ata_dev_enabled(dev)) {
  ap->pm_policy = 128;
  return -EINVAL;
 }
 rc = sata_scr_read(link, SCR_CONTROL, &scontrol);
 if (rc)
  return rc;

 switch (policy) {
 case 129:

  scontrol &= ~(0x3 << 8);
  rc = sata_scr_write(link, SCR_CONTROL, scontrol);
  if (rc)
   return rc;


  if (dev->flags & ATA_DFLAG_DIPM)
   err_mask = ata_dev_set_feature(dev,
     SETFEATURES_SATA_ENABLE, SATA_DIPM);
  break;
 case 130:

  scontrol &= ~(0x1 << 8);
  scontrol |= (0x2 << 8);
  rc = sata_scr_write(link, SCR_CONTROL, scontrol);
  if (rc)
   return rc;






  break;
 case 128:
 case 131:

  scontrol |= (0x3 << 8);
  rc = sata_scr_write(link, SCR_CONTROL, scontrol);
  if (rc)
   return rc;






  break;
 }


 (void) err_mask;

 return 0;
}
