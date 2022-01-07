
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int flags; } ;
struct isci_host {int eventq; } ;


 int IDEV_STOP_PENDING ;
 int test_bit (int ,int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static inline void wait_for_device_stop(struct isci_host *ihost, struct isci_remote_device *idev)
{
 wait_event(ihost->eventq, !test_bit(IDEV_STOP_PENDING, &idev->flags));
}
