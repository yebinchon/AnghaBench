
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int dummy; } ;



__attribute__((used)) static unsigned int ata_scsiop_inq_b2(struct ata_scsi_args *args, u8 *rbuf)
{

 rbuf[1] = 0xb2;
 rbuf[3] = 0x4;
 rbuf[5] = 1 << 6;

 return 0;
}
