
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* device; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int host_lock; } ;
typedef TYPE_3__ Scsi_Cmnd ;


 int C4_IMG ;
 int CHIP_RESET ;
 int CMD_REG ;
 int CONFIG4 ;
 int DEB (int ) ;
 int SCSI_NOP ;
 int SCSI_RESET ;
 int SUCCESS ;
 int chip_init () ;
 int outb (int ,int ) ;
 int printk (char*) ;
 int rtrc (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int NCR53c406a_host_reset(Scsi_Cmnd * SCpnt)
{
 DEB(printk("NCR53c406a_reset called\n"));

 spin_lock_irq(SCpnt->device->host->host_lock);

 outb(C4_IMG, CONFIG4);
 outb(CHIP_RESET, CMD_REG);
 outb(SCSI_NOP, CMD_REG);
 outb(SCSI_RESET, CMD_REG);
 chip_init();

 rtrc(2);

 spin_unlock_irq(SCpnt->device->host->host_lock);

 return SUCCESS;
}
