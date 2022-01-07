
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int ILLEGAL_REQUEST ;
 int ata_scsi_set_sense (struct scsi_cmnd*,int ,int,int) ;

__attribute__((used)) static void ata_scsi_invalid_field(struct scsi_cmnd *cmd,
       void (*done)(struct scsi_cmnd *))
{
 ata_scsi_set_sense(cmd, ILLEGAL_REQUEST, 0x24, 0x0);

 done(cmd);
}
