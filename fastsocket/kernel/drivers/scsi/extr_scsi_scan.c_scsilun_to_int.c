
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_lun {int* scsi_lun; } ;
typedef int lun ;



int scsilun_to_int(struct scsi_lun *scsilun)
{
 int i;
 unsigned int lun;

 lun = 0;
 for (i = 0; i < sizeof(lun); i += 2)
  lun = lun | (((scsilun->scsi_lun[i] << 8) |
         scsilun->scsi_lun[i + 1]) << (i * 8));
 return lun;
}
