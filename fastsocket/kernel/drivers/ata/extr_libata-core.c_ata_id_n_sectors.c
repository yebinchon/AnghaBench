
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u64 ;
typedef int u16 ;


 size_t ATA_ID_CUR_CYLS ;
 size_t ATA_ID_CUR_HEADS ;
 size_t ATA_ID_CUR_SECTORS ;
 size_t ATA_ID_CYLS ;
 size_t ATA_ID_HEADS ;
 int ATA_ID_LBA_CAPACITY ;
 int ATA_ID_LBA_CAPACITY_2 ;
 size_t ATA_ID_SECTORS ;
 scalar_t__ ata_id_current_chs_valid (int const*) ;
 scalar_t__ ata_id_has_lba (int const*) ;
 scalar_t__ ata_id_has_lba48 (int const*) ;
 int const ata_id_u32 (int const*,int ) ;
 int const ata_id_u64 (int const*,int ) ;

__attribute__((used)) static u64 ata_id_n_sectors(const u16 *id)
{
 if (ata_id_has_lba(id)) {
  if (ata_id_has_lba48(id))
   return ata_id_u64(id, ATA_ID_LBA_CAPACITY_2);
  else
   return ata_id_u32(id, ATA_ID_LBA_CAPACITY);
 } else {
  if (ata_id_current_chs_valid(id))
   return id[ATA_ID_CUR_CYLS] * id[ATA_ID_CUR_HEADS] *
          id[ATA_ID_CUR_SECTORS];
  else
   return id[ATA_ID_CYLS] * id[ATA_ID_HEADS] *
          id[ATA_ID_SECTORS];
 }
}
