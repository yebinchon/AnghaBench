
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; } ;


 int SUCCESS ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int wd33c93_host_reset (struct scsi_cmnd*) ;

__attribute__((used)) static int sgiwd93_bus_reset(struct scsi_cmnd *cmd)
{





 spin_lock_irq(cmd->device->host->host_lock);
 wd33c93_host_reset(cmd);
 spin_unlock_irq(cmd->device->host->host_lock);

 return SUCCESS;
}
