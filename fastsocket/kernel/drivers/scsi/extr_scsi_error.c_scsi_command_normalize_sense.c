
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_cmnd {int sense_buffer; } ;


 int SCSI_SENSE_BUFFERSIZE ;
 int scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;

int scsi_command_normalize_sense(struct scsi_cmnd *cmd,
     struct scsi_sense_hdr *sshdr)
{
 return scsi_normalize_sense(cmd->sense_buffer,
   SCSI_SENSE_BUFFERSIZE, sshdr);
}
