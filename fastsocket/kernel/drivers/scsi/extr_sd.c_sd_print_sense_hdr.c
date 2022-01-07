
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; } ;
struct scsi_disk {int dummy; } ;


 int KERN_INFO ;
 int scsi_show_extd_sense (int ,int ) ;
 int scsi_show_sense_hdr (struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static void sd_print_sense_hdr(struct scsi_disk *sdkp,
          struct scsi_sense_hdr *sshdr)
{
 sd_printk(KERN_INFO, sdkp, "");
 scsi_show_sense_hdr(sshdr);
 sd_printk(KERN_INFO, sdkp, "");
 scsi_show_extd_sense(sshdr->asc, sshdr->ascq);
}
