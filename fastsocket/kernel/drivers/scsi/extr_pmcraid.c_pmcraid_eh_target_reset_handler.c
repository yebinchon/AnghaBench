
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int KERN_INFO ;
 int PMCRAID_INTERNAL_TIMEOUT ;
 int RESET_DEVICE_TARGET ;
 int pmcraid_reset_device (struct scsi_cmnd*,int ,int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;

__attribute__((used)) static int pmcraid_eh_target_reset_handler(struct scsi_cmnd *scmd)
{
 scmd_printk(KERN_INFO, scmd,
      "Doing target reset due to an I/O command timeout.\n");
 return pmcraid_reset_device(scmd,
        PMCRAID_INTERNAL_TIMEOUT,
        RESET_DEVICE_TARGET);
}
