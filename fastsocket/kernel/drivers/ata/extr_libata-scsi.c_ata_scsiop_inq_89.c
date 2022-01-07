
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tf ;
struct ata_taskfile {int lbal; int nsect; int command; } ;
struct ata_scsi_args {char* id; } ;


 int ATA_CMD_ID_ATA ;
 int ATA_DRDY ;
 int ATA_ID_FW_REV ;
 char* DRV_VERSION ;
 int ata_id_string (char*,int*,int ,int) ;
 int ata_tf_to_fis (struct ata_taskfile*,int ,int,int*) ;
 int memcpy (int*,char*,int) ;
 int memset (struct ata_taskfile*,int ,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_89(struct ata_scsi_args *args, u8 *rbuf)
{
 struct ata_taskfile tf;

 memset(&tf, 0, sizeof(tf));

 rbuf[1] = 0x89;
 rbuf[2] = (0x238 >> 8);
 rbuf[3] = (0x238 & 0xff);

 memcpy(&rbuf[8], "linux   ", 8);
 memcpy(&rbuf[16], "libata          ", 16);
 memcpy(&rbuf[32], DRV_VERSION, 4);
 ata_id_string(args->id, &rbuf[32], ATA_ID_FW_REV, 4);



 tf.command = ATA_DRDY;
 tf.lbal = 0x1;
 tf.nsect = 0x1;

 ata_tf_to_fis(&tf, 0, 1, &rbuf[36]);
 rbuf[36] = 0x34;

 rbuf[56] = ATA_CMD_ID_ATA;

 memcpy(&rbuf[60], &args->id[0], 512);
 return 0;
}
