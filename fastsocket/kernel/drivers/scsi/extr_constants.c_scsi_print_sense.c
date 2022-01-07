
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; } ;
struct scsi_cmnd {int sense_buffer; } ;


 int KERN_INFO ;
 int SCSI_SENSE_BUFFERSIZE ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int scsi_decode_sense_buffer (int ,int ,struct scsi_sense_hdr*) ;
 int scsi_decode_sense_extras (int ,int ,struct scsi_sense_hdr*) ;
 int scsi_show_extd_sense (int ,int ) ;
 int scsi_show_sense_hdr (struct scsi_sense_hdr*) ;

void scsi_print_sense(char *name, struct scsi_cmnd *cmd)
{
 struct scsi_sense_hdr sshdr;

 scmd_printk(KERN_INFO, cmd, "");
 scsi_decode_sense_buffer(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
     &sshdr);
 scsi_show_sense_hdr(&sshdr);
 scsi_decode_sense_extras(cmd->sense_buffer, SCSI_SENSE_BUFFERSIZE,
     &sshdr);
 scmd_printk(KERN_INFO, cmd, "");
 scsi_show_extd_sense(sshdr.asc, sshdr.ascq);
}
