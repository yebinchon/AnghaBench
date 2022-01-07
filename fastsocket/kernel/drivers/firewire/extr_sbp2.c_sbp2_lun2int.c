
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_lun {int* scsi_lun; } ;
typedef int eight_bytes_lun ;


 int memset (struct scsi_lun*,int ,int) ;
 int scsilun_to_int (struct scsi_lun*) ;

__attribute__((used)) static int sbp2_lun2int(u16 lun)
{
 struct scsi_lun eight_bytes_lun;

 memset(&eight_bytes_lun, 0, sizeof(eight_bytes_lun));
 eight_bytes_lun.scsi_lun[0] = (lun >> 8) & 0xff;
 eight_bytes_lun.scsi_lun[1] = lun & 0xff;

 return scsilun_to_int(&eight_bytes_lun);
}
