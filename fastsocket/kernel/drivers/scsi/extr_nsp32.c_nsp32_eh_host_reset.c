
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct Scsi_Host {unsigned int io_port; int host_lock; scalar_t__ hostdata; } ;
typedef int nsp32_hw_data ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int IRQ_CONTROL ;
 int IRQ_CONTROL_ALL_IRQ_MASK ;
 int KERN_INFO ;
 int NSP32_DEBUG_BUSRESET ;
 int SUCCESS ;
 int nsp32_dbg (int ,char*,struct scsi_cmnd*) ;
 int nsp32_do_bus_reset (int *) ;
 int nsp32_msg (int ,char*) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int nsp32hw_init (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int nsp32_eh_host_reset(struct scsi_cmnd *SCpnt)
{
 struct Scsi_Host *host = SCpnt->device->host;
 unsigned int base = SCpnt->device->host->io_port;
 nsp32_hw_data *data = (nsp32_hw_data *)host->hostdata;

 nsp32_msg(KERN_INFO, "Host Reset");
 nsp32_dbg(NSP32_DEBUG_BUSRESET, "SCpnt=0x%x", SCpnt);

 spin_lock_irq(SCpnt->device->host->host_lock);

 nsp32hw_init(data);
 nsp32_write2(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);
 nsp32_do_bus_reset(data);
 nsp32_write2(base, IRQ_CONTROL, 0);

 spin_unlock_irq(SCpnt->device->host->host_lock);
 return SUCCESS;
}
