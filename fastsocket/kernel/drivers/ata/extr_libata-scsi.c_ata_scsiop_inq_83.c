
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int id; } ;


 int ATA_ID_PROD ;
 int ATA_ID_PROD_LEN ;
 int ATA_ID_SERNO ;
 int ATA_ID_SERNO_LEN ;
 int ata_id_string (int ,unsigned char*,int ,int) ;
 int memcpy (int*,char*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_83(struct ata_scsi_args *args, u8 *rbuf)
{
 const int sat_model_serial_desc_len = 68;
 int num;

 rbuf[1] = 0x83;
 num = 4;


 rbuf[num + 0] = 2;
 rbuf[num + 3] = ATA_ID_SERNO_LEN;
 num += 4;
 ata_id_string(args->id, (unsigned char *) rbuf + num,
        ATA_ID_SERNO, ATA_ID_SERNO_LEN);
 num += ATA_ID_SERNO_LEN;



 rbuf[num + 0] = 2;
 rbuf[num + 1] = 1;
 rbuf[num + 3] = sat_model_serial_desc_len;
 num += 4;
 memcpy(rbuf + num, "ATA     ", 8);
 num += 8;
 ata_id_string(args->id, (unsigned char *) rbuf + num, ATA_ID_PROD,
        ATA_ID_PROD_LEN);
 num += ATA_ID_PROD_LEN;
 ata_id_string(args->id, (unsigned char *) rbuf + num, ATA_ID_SERNO,
        ATA_ID_SERNO_LEN);
 num += ATA_ID_SERNO_LEN;

 rbuf[3] = num - 4;
 return 0;
}
