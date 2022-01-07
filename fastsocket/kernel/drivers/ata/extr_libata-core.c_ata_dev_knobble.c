
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_port {scalar_t__ cbl; } ;
struct ata_device {int id; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 scalar_t__ ATA_CBL_SATA ;
 int ATA_HORKAGE_BRIDGE_OK ;
 int ata_dev_blacklisted (struct ata_device*) ;
 int ata_id_is_sata (int ) ;

__attribute__((used)) static inline u8 ata_dev_knobble(struct ata_device *dev)
{
 struct ata_port *ap = dev->link->ap;

 if (ata_dev_blacklisted(dev) & ATA_HORKAGE_BRIDGE_OK)
  return 0;

 return ((ap->cbl == ATA_CBL_SATA) && (!ata_id_is_sata(dev->id)));
}
