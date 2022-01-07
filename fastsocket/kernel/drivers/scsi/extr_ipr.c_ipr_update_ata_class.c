
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_resource_entry {int ata_class; } ;


 int ATA_DEV_ATA ;
 int ATA_DEV_ATAPI ;
 int ATA_DEV_UNKNOWN ;





__attribute__((used)) static void ipr_update_ata_class(struct ipr_resource_entry *res, unsigned int proto)
{
 switch(proto) {
 case 129:
 case 131:
  res->ata_class = ATA_DEV_ATA;
  break;
 case 128:
 case 130:
  res->ata_class = ATA_DEV_ATAPI;
  break;
 default:
  res->ata_class = ATA_DEV_UNKNOWN;
  break;
 };
}
