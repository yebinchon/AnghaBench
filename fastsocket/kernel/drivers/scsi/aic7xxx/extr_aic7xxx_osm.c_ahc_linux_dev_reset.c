
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int SCB_DEVICE_RESET ;
 int ahc_linux_queue_recovery_cmd (struct scsi_cmnd*,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ahc_linux_dev_reset(struct scsi_cmnd *cmd)
{
 int error;

 error = ahc_linux_queue_recovery_cmd(cmd, SCB_DEVICE_RESET);
 if (error != 0)
  printf("aic7xxx_dev_reset returns 0x%x\n", error);
 return (error);
}
