
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; int sense_buffer; } ;


 int DID_SOFT_ERROR ;
 int DRIVER_SENSE ;
 int ILLEGAL_REQUEST ;
 int SAM_STAT_CHECK_CONDITION ;
 int scsi_build_sense_buffer (int,int ,int ,int,int) ;
 int set_driver_byte (struct scsi_cmnd*,int ) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;

void zfcp_scsi_dif_sense_error(struct scsi_cmnd *scmd, int ascq)
{
 scsi_build_sense_buffer(1, scmd->sense_buffer,
    ILLEGAL_REQUEST, 0x10, ascq);
 set_driver_byte(scmd, DRIVER_SENSE);
 scmd->result |= SAM_STAT_CHECK_CONDITION;
 set_host_byte(scmd, DID_SOFT_ERROR);
}
