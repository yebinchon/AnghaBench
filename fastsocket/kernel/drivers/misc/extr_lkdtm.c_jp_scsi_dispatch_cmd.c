
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int jprobe_return () ;
 int lkdtm_handler () ;

__attribute__((used)) static int jp_scsi_dispatch_cmd(struct scsi_cmnd *cmd)
{
 lkdtm_handler();
 jprobe_return();
 return 0;
}
