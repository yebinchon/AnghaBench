
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int response_code; int sense_key; } ;


 int printk (char*,...) ;
 scalar_t__ scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 char* scsi_sense_key_string (int ) ;

void
scsi_show_sense_hdr(struct scsi_sense_hdr *sshdr)
{
 const char *sense_txt;

 sense_txt = scsi_sense_key_string(sshdr->sense_key);
 if (sense_txt)
  printk("Sense Key : %s ", sense_txt);
 else
  printk("Sense Key : 0x%x ", sshdr->sense_key);

 printk("%s", scsi_sense_is_deferred(sshdr) ? "[deferred] " :
        "[current] ");

 if (sshdr->response_code >= 0x72)
  printk("[descriptor]");

 printk("\n");
}
