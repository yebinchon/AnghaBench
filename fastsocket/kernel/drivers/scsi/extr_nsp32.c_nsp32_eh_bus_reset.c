
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
typedef int nsp32_hw_data ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int io_port; int host_lock; scalar_t__ hostdata; } ;


 int IRQ_CONTROL ;
 int IRQ_CONTROL_ALL_IRQ_MASK ;
 int KERN_INFO ;
 int NSP32_DEBUG_BUSRESET ;
 int SUCCESS ;
 int nsp32_dbg (int ,char*,struct scsi_cmnd*) ;
 int nsp32_do_bus_reset (int *) ;
 int nsp32_msg (int ,char*) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int nsp32_eh_bus_reset(struct scsi_cmnd *SCpnt)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;

 spin_lock_irq(SCpnt->device->host->host_lock);

 nsp32_msg(KERN_INFO, "Bus Reset");
 nsp32_dbg(NSP32_DEBUG_BUSRESET, "SCpnt=0x%x", SCpnt);

 nsp32_write2(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);
 nsp32_do_bus_reset(data);
 nsp32_write2(base, IRQ_CONTROL, 0);

 spin_unlock_irq(SCpnt->device->host->host_lock);
 return SUCCESS;
}
