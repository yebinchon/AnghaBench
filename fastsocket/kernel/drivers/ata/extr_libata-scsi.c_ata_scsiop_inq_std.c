
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int versions ;
typedef int u8 ;
struct ata_scsi_args {int id; } ;
typedef int hdr ;


 int ATA_ID_FW_REV ;
 int ATA_ID_PROD ;
 int TYPE_DISK ;
 int VPRINTK (char*) ;
 scalar_t__ ata_id_removeable (int ) ;
 int ata_id_string (int ,int*,int ,int) ;
 int memcpy (int*,...) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_std(struct ata_scsi_args *args, u8 *rbuf)
{
 const u8 versions[] = {
  0x60,

  0x03,
  0x20,

  0x02,
  0x60
 };
 u8 hdr[] = {
  TYPE_DISK,
  0,
  0x5,
  2,
  95 - 4
 };

 VPRINTK("ENTER\n");


 if (ata_id_removeable(args->id))
  hdr[1] |= (1 << 7);

 memcpy(rbuf, hdr, sizeof(hdr));
 memcpy(&rbuf[8], "ATA     ", 8);
 ata_id_string(args->id, &rbuf[16], ATA_ID_PROD, 16);
 ata_id_string(args->id, &rbuf[32], ATA_ID_FW_REV, 4);

 if (rbuf[32] == 0 || rbuf[32] == ' ')
  memcpy(&rbuf[32], "n/a ", 4);

 memcpy(rbuf + 59, versions, sizeof(versions));

 return 0;
}
