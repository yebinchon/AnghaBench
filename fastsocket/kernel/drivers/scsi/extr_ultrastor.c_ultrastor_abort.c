
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int result; scalar_t__ host_scribble; TYPE_1__* device; } ;
struct mscp {void (* done ) (struct scsi_cmnd*) ;struct scsi_cmnd* SCint; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_5__ {int slot; int icm_address; int ogm_address; struct mscp* mscp; int doorbell_address; int * aborted; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;


 int DID_ABORT ;
 int FAILED ;
 int LCL_DOORBELL_INTR (int ) ;
 int SUCCESS ;
 int SYS_DOORBELL_INTR (int ) ;
 unsigned int ULTRASTOR_MAX_CMDS ;
 TYPE_2__ config ;
 int inb (int) ;
 int inl (int) ;
 scalar_t__ isa_bus_to_virt (int ) ;
 int isa_virt_to_bus (struct mscp*) ;
 int log_ultrastor_abort (TYPE_2__*,unsigned int) ;
 int outb (int,int) ;
 int outl (int ,int) ;
 int panic (char*) ;
 int printk (char*,...) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int strcpy (char*,char*) ;
 int udelay (int) ;
 int ultrastor_interrupt (int *) ;
 unsigned char xchgb (int,int *) ;

__attribute__((used)) static int ultrastor_abort(struct scsi_cmnd *SCpnt)
{





    unsigned int mscp_index;
    unsigned char old_aborted;
    unsigned long flags;
    void (*done)(struct scsi_cmnd *);
    struct Scsi_Host *host = SCpnt->device->host;

    if(config.slot)
      return FAILED;


    if(!SCpnt->host_scribble)
      return FAILED;

    mscp_index = ((struct mscp *)SCpnt->host_scribble) - config.mscp;
    if (mscp_index >= ULTRASTOR_MAX_CMDS)
 panic("Ux4F aborting invalid MSCP");
    old_aborted = xchgb(DID_ABORT, &config.aborted[mscp_index]);



    if (old_aborted == 0xff)
 return SUCCESS;



    if (config.slot && inb(config.ogm_address - 1) == 0)
      {
 unsigned long flags;

 spin_lock_irqsave(host->host_lock, flags);
 outl(isa_virt_to_bus(&config.mscp[mscp_index]), config.ogm_address);
 udelay(8);
 outb(0x80, config.ogm_address - 1);
 outb(0x2, LCL_DOORBELL_INTR(config.doorbell_address));




 spin_unlock_irqrestore(host->host_lock, flags);

 return SUCCESS;
      }
    if (config.mscp[mscp_index].SCint == ((void*)0))
 return FAILED;

    if (config.mscp[mscp_index].SCint != SCpnt) panic("Bad abort");
    config.mscp[mscp_index].SCint = ((void*)0);
    done = config.mscp[mscp_index].done;
    config.mscp[mscp_index].done = ((void*)0);
    SCpnt->result = DID_ABORT << 16;


    done(SCpnt);


    return SUCCESS;
}
