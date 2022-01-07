
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int eventq; int flags; } ;


 int IHOST_STOP_PENDING ;
 int clear_bit (int ,int *) ;
 int sci_controller_disable_interrupts (struct isci_host*) ;
 int wake_up (int *) ;

__attribute__((used)) static void isci_host_stop_complete(struct isci_host *ihost)
{
 sci_controller_disable_interrupts(ihost);
 clear_bit(IHOST_STOP_PENDING, &ihost->flags);
 wake_up(&ihost->eventq);
}
