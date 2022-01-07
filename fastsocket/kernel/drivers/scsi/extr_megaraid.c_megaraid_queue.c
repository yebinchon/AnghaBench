
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int list; int state; } ;
typedef TYPE_4__ scb_t ;
struct TYPE_17__ {int lock; int quiescent; int pending_list; } ;
typedef TYPE_5__ adapter_t ;
struct TYPE_15__ {void (* scsi_done ) (TYPE_3__*) ;TYPE_2__* device; } ;
struct TYPE_14__ {TYPE_1__* host; } ;
struct TYPE_13__ {scalar_t__ hostdata; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int SCB_PENDQ ;
 scalar_t__ atomic_read (int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_4__* mega_build_cmd (TYPE_5__*,TYPE_3__*,int*) ;
 int mega_runpendq (TYPE_5__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
megaraid_queue(Scsi_Cmnd *scmd, void (*done)(Scsi_Cmnd *))
{
 adapter_t *adapter;
 scb_t *scb;
 int busy=0;
 unsigned long flags;

 adapter = (adapter_t *)scmd->device->host->hostdata;

 scmd->scsi_done = done;
 spin_lock_irqsave(&adapter->lock, flags);
 scb = mega_build_cmd(adapter, scmd, &busy);
 if (!scb)
  goto out;

 scb->state |= SCB_PENDQ;
 list_add_tail(&scb->list, &adapter->pending_list);






 if (atomic_read(&adapter->quiescent) == 0)
  mega_runpendq(adapter);

 busy = 0;
 out:
 spin_unlock_irqrestore(&adapter->lock, flags);
 return busy;
}
