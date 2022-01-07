
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct Scsi_Host {TYPE_1__* transportt; scalar_t__ cmd_per_lun; scalar_t__ can_queue; } ;
struct TYPE_2__ {scalar_t__ eh_timed_out; } ;


 scalar_t__ ISCSI_DEF_CMD_PER_LUN ;
 scalar_t__ ISCSI_DEF_XMIT_CMDS_MAX ;
 scalar_t__ iscsi_eh_cmd_timed_out ;
 int scsi_add_host (struct Scsi_Host*,struct device*) ;

int iscsi_host_add(struct Scsi_Host *shost, struct device *pdev)
{
 if (!shost->can_queue)
  shost->can_queue = ISCSI_DEF_XMIT_CMDS_MAX;

 if (!shost->cmd_per_lun)
  shost->cmd_per_lun = ISCSI_DEF_CMD_PER_LUN;

 if (!shost->transportt->eh_timed_out)
  shost->transportt->eh_timed_out = iscsi_eh_cmd_timed_out;
 return scsi_add_host(shost, pdev);
}
