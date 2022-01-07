
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int io_port; int host_lock; } ;


 int DEB (int ) ;
 int SUCCESS ;
 int SYM53C500_int_host_reset (int) ;
 int printk (char*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int
SYM53C500_host_reset(struct scsi_cmnd *SCpnt)
{
 int port_base = SCpnt->device->host->io_port;

 DEB(printk("SYM53C500_host_reset called\n"));
 spin_lock_irq(SCpnt->device->host->host_lock);
 SYM53C500_int_host_reset(port_base);
 spin_unlock_irq(SCpnt->device->host->host_lock);

 return SUCCESS;
}
