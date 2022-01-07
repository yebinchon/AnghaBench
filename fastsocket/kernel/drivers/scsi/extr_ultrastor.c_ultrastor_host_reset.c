
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_9__ {int mscp_free; scalar_t__ mscp_busy; scalar_t__ aborted; TYPE_2__* mscp; scalar_t__ icm_address; scalar_t__ ogm_address; scalar_t__ slot; int doorbell_address; } ;
struct TYPE_8__ {int result; } ;
struct TYPE_7__ {TYPE_3__* SCint; int (* done ) (TYPE_3__*) ;} ;
struct TYPE_6__ {struct Scsi_Host* host; } ;


 int DID_RESET ;
 int FAILED ;
 scalar_t__ LCL_DOORBELL_INTR (int ) ;
 int SUCCESS ;
 int ULTRASTOR_MAX_CMDS ;
 TYPE_5__ config ;
 int memset (unsigned char*,int ,int) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int ultrastor_host_reset(struct scsi_cmnd * SCpnt)
{
    unsigned long flags;
    int i;
    struct Scsi_Host *host = SCpnt->device->host;





    if(config.slot)
     return FAILED;

    spin_lock_irqsave(host->host_lock, flags);


    outb(0xc0, LCL_DOORBELL_INTR(config.doorbell_address));
    if (config.slot)
      {
 outb(0, config.ogm_address - 1);
 outb(0, config.icm_address - 1);
      }
    for (i = 0; i < ULTRASTOR_MAX_CMDS; i++)
      {
 if (! (config.mscp_free & (1 << i)) &&
     config.mscp[i].done && config.mscp[i].SCint)
   {
     config.mscp[i].SCint->result = DID_RESET << 16;
     config.mscp[i].done(config.mscp[i].SCint);
     config.mscp[i].done = ((void*)0);
   }
 config.mscp[i].SCint = ((void*)0);
      }
    memset((unsigned char *)config.aborted, 0, sizeof config.aborted);



    config.mscp_free = ~0;


    spin_unlock_irqrestore(host->host_lock, flags);
    return SUCCESS;

}
