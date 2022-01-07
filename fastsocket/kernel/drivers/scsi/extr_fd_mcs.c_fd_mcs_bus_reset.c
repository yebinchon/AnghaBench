
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
typedef TYPE_2__ Scsi_Cmnd ;


 int PARITY_MASK ;
 int SCSI_Cntl_port ;
 int SCSI_Mode_Cntl_port ;
 int SUCCESS ;
 int TMC_Cntl_port ;
 int current_SC ;
 int do_pause (int) ;
 int fd_mcs_print_info (int ) ;
 int outb (int,int ) ;
 int printk (char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int fd_mcs_bus_reset(Scsi_Cmnd * SCpnt) {
 struct Scsi_Host *shpnt = SCpnt->device->host;
 unsigned long flags;
 spin_lock_irqsave(shpnt->host_lock, flags);

 outb(1, SCSI_Cntl_port);
 do_pause(2);
 outb(0, SCSI_Cntl_port);
 do_pause(115);
 outb(0, SCSI_Mode_Cntl_port);
 outb(PARITY_MASK, TMC_Cntl_port);

 spin_unlock_irqrestore(shpnt->host_lock, flags);




  return SUCCESS;
}
