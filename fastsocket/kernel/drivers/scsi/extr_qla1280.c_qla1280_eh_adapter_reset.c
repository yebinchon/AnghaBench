
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; } ;


 int ADAPTER_RESET ;
 int qla1280_error_action (struct scsi_cmnd*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
qla1280_eh_adapter_reset(struct scsi_cmnd *cmd)
{
 int rc;

 spin_lock_irq(cmd->device->host->host_lock);
 rc = qla1280_error_action(cmd, ADAPTER_RESET);
 spin_unlock_irq(cmd->device->host->host_lock);

 return rc;
}
