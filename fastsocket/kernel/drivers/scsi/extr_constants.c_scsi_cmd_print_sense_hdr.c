
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; } ;
struct scsi_cmnd {int dummy; } ;


 int KERN_INFO ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,char const*) ;
 int scsi_show_extd_sense (int ,int ) ;
 int scsi_show_sense_hdr (struct scsi_sense_hdr*) ;

void
scsi_cmd_print_sense_hdr(struct scsi_cmnd *scmd, const char *desc,
     struct scsi_sense_hdr *sshdr)
{
 scmd_printk(KERN_INFO, scmd, "%s: ", desc);
 scsi_show_sense_hdr(sshdr);
 scmd_printk(KERN_INFO, scmd, "%s: ", desc);
 scsi_show_extd_sense(sshdr->asc, sshdr->ascq);
}
