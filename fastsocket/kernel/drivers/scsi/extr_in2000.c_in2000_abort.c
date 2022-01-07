
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* device; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {int host_lock; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int __in2000_abort (TYPE_3__*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int in2000_abort(Scsi_Cmnd * cmd)
{
 int rc;

 spin_lock_irq(cmd->device->host->host_lock);
 rc = __in2000_abort(cmd);
 spin_unlock_irq(cmd->device->host->host_lock);

 return rc;
}
