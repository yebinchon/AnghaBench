
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_host {int flags; int eventq; } ;


 int IHOST_STOP_PENDING ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void wait_for_stop(struct isci_host *ihost)
{
 wait_event(ihost->eventq, !test_bit(IHOST_STOP_PENDING, &ihost->flags));
}
