
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct ata_scsi_args {int id; TYPE_1__* cmd; struct ata_device* dev; } ;
struct ata_device {int n_sectors; int id; } ;
struct TYPE_2__ {scalar_t__* cmnd; } ;


 scalar_t__ READ_CAPACITY ;
 int VPRINTK (char*) ;
 scalar_t__ ata_id_has_trim (int ) ;
 scalar_t__ ata_id_has_zero_after_trim (int ) ;
 int ata_id_log2_per_physical_sector (int ) ;
 int ata_id_logical_sector_offset (int ,int) ;
 int ata_id_logical_sector_size (int ) ;

__attribute__((used)) static unsigned int ata_scsiop_read_cap(struct ata_scsi_args *args, u8 *rbuf)
{
 struct ata_device *dev = args->dev;
 u64 last_lba = dev->n_sectors - 1;
 u32 sector_size;
 u8 log2_per_phys;
 u16 lowest_aligned;

 sector_size = ata_id_logical_sector_size(dev->id);
 log2_per_phys = ata_id_log2_per_physical_sector(dev->id);
 lowest_aligned = ata_id_logical_sector_offset(dev->id, log2_per_phys);

 VPRINTK("ENTER\n");

 if (args->cmd->cmnd[0] == READ_CAPACITY) {
  if (last_lba >= 0xffffffffULL)
   last_lba = 0xffffffff;


  rbuf[0] = last_lba >> (8 * 3);
  rbuf[1] = last_lba >> (8 * 2);
  rbuf[2] = last_lba >> (8 * 1);
  rbuf[3] = last_lba;


  rbuf[4] = sector_size >> (8 * 3);
  rbuf[5] = sector_size >> (8 * 2);
  rbuf[6] = sector_size >> (8 * 1);
  rbuf[7] = sector_size;
 } else {

  rbuf[0] = last_lba >> (8 * 7);
  rbuf[1] = last_lba >> (8 * 6);
  rbuf[2] = last_lba >> (8 * 5);
  rbuf[3] = last_lba >> (8 * 4);
  rbuf[4] = last_lba >> (8 * 3);
  rbuf[5] = last_lba >> (8 * 2);
  rbuf[6] = last_lba >> (8 * 1);
  rbuf[7] = last_lba;


  rbuf[ 8] = sector_size >> (8 * 3);
  rbuf[ 9] = sector_size >> (8 * 2);
  rbuf[10] = sector_size >> (8 * 1);
  rbuf[11] = sector_size;

  rbuf[12] = 0;
  rbuf[13] = log2_per_phys;
  rbuf[14] = (lowest_aligned >> 8) & 0x3f;
  rbuf[15] = lowest_aligned;

  if (ata_id_has_trim(args->id)) {
   rbuf[14] |= 0x80;

   if (ata_id_has_zero_after_trim(args->id))
    rbuf[14] |= 0x40;
  }
 }

 return 0;
}
