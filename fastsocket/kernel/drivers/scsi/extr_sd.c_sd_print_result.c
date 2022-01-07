
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dummy; } ;


 int KERN_INFO ;
 int scsi_show_result (int) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static void sd_print_result(struct scsi_disk *sdkp, int result)
{
 sd_printk(KERN_INFO, sdkp, "");
 scsi_show_result(result);
}
