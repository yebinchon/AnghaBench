
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isci_host {int scic_lock; int flags; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct isci_host* lldd_ha; } ;


 int IHOST_START_PENDING ;
 TYPE_1__* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 int sci_controller_enable_interrupts (struct isci_host*) ;
 unsigned long sci_controller_get_suggested_start_timeout (struct isci_host*) ;
 int sci_controller_start (struct isci_host*,unsigned long) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void isci_host_start(struct Scsi_Host *shost)
{
 struct isci_host *ihost = SHOST_TO_SAS_HA(shost)->lldd_ha;
 unsigned long tmo = sci_controller_get_suggested_start_timeout(ihost);

 set_bit(IHOST_START_PENDING, &ihost->flags);

 spin_lock_irq(&ihost->scic_lock);
 sci_controller_start(ihost, tmo);
 sci_controller_enable_interrupts(ihost);
 spin_unlock_irq(&ihost->scic_lock);
}
