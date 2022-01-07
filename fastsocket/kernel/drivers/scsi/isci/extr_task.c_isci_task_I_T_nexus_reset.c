
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_remote_device {int dummy; } ;
struct isci_host {int scic_lock; } ;
struct domain_device {int lldd_dev; } ;


 int ENODEV ;
 struct isci_host* dev_to_ihost (struct domain_device*) ;
 struct isci_remote_device* isci_get_device (int ) ;
 int isci_put_device (struct isci_remote_device*) ;
 int isci_reset_device (struct isci_host*,struct domain_device*,struct isci_remote_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int isci_task_I_T_nexus_reset(struct domain_device *dev)
{
 struct isci_host *ihost = dev_to_ihost(dev);
 struct isci_remote_device *idev;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&ihost->scic_lock, flags);
 idev = isci_get_device(dev->lldd_dev);
 spin_unlock_irqrestore(&ihost->scic_lock, flags);

 if (!idev) {



  ret = -ENODEV;
  goto out;
 }

 ret = isci_reset_device(ihost, dev, idev);
 out:
 isci_put_device(idev);
 return ret;
}
