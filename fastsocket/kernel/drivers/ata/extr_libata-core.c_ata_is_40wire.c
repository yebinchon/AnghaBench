
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int horkage; int id; } ;


 int ATA_HORKAGE_IVB ;
 int ata_drive_40wire (int ) ;
 int ata_drive_40wire_relaxed (int ) ;

__attribute__((used)) static int ata_is_40wire(struct ata_device *dev)
{
 if (dev->horkage & ATA_HORKAGE_IVB)
  return ata_drive_40wire_relaxed(dev->id);
 return ata_drive_40wire(dev->id);
}
