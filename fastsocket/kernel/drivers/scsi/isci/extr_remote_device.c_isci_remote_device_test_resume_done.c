
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int rnc; int flags; } ;
struct isci_host {int scic_lock; } ;


 int IDEV_ABORT_PATH_RESUME_PENDING ;
 int IDEV_STOP_PENDING ;
 scalar_t__ sci_remote_node_context_is_being_destroyed (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool isci_remote_device_test_resume_done(
 struct isci_host *ihost,
 struct isci_remote_device *idev)
{
 unsigned long flags;
 bool done;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 done = !test_bit(IDEV_ABORT_PATH_RESUME_PENDING, &idev->flags)
  || test_bit(IDEV_STOP_PENDING, &idev->flags)
  || sci_remote_node_context_is_being_destroyed(&idev->rnc);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 return done;
}
