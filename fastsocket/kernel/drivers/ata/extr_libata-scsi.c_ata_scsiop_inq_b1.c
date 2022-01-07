
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int id; } ;


 int ata_id_form_factor (int ) ;
 int ata_id_rotation_rate (int ) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_b1(struct ata_scsi_args *args, u8 *rbuf)
{
 int form_factor = ata_id_form_factor(args->id);
 int media_rotation_rate = ata_id_rotation_rate(args->id);

 rbuf[1] = 0xb1;
 rbuf[3] = 0x3c;
 rbuf[4] = media_rotation_rate >> 8;
 rbuf[5] = media_rotation_rate;
 rbuf[7] = form_factor;

 return 0;
}
