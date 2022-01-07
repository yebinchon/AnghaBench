
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ATA_PROT_DMA ;
 int ATA_PROT_NODATA ;
 int ATA_PROT_PIO ;
 int ATA_PROT_UNKNOWN ;

__attribute__((used)) static u8
ata_scsi_map_proto(u8 byte1)
{
 switch((byte1 & 0x1e) >> 1) {
 case 3:
  return ATA_PROT_NODATA;

 case 6:
 case 10:
 case 11:
  return ATA_PROT_DMA;

 case 4:
 case 5:
  return ATA_PROT_PIO;

 case 0:
 case 1:
 case 8:
 case 9:
 case 7:
 case 12:
 case 15:
 default:
  break;
 }

 return ATA_PROT_UNKNOWN;
}
