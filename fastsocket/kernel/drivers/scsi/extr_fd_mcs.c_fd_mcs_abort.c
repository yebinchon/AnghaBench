
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct Scsi_Host {int host_lock; } ;
struct TYPE_7__ {int phase; } ;
struct TYPE_10__ {int result; TYPE_1__ SCp; } ;
struct TYPE_9__ {TYPE_2__* device; } ;
struct TYPE_8__ {struct Scsi_Host* host; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int DID_ABORT ;
 int FAILED ;
 int SUCCESS ;
 int aborted ;
 TYPE_6__* current_SC ;
 int fd_mcs_make_bus_idle (struct Scsi_Host*) ;
 int fd_mcs_print_info (TYPE_3__*) ;
 int in_command ;
 int my_done (struct Scsi_Host*,int) ;
 int printk (char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fd_mcs_abort(Scsi_Cmnd * SCpnt)
{
 struct Scsi_Host *shpnt = SCpnt->device->host;

 unsigned long flags;




 spin_lock_irqsave(shpnt->host_lock, flags);
 if (!in_command) {



  spin_unlock_irqrestore(shpnt->host_lock, flags);
  return FAILED;
 } else
  printk("\n");





 fd_mcs_make_bus_idle(shpnt);

 current_SC->SCp.phase |= aborted;

 current_SC->result = DID_ABORT << 16;


 my_done(shpnt, DID_ABORT << 16);

 spin_unlock_irqrestore(shpnt->host_lock, flags);
 return SUCCESS;
}
