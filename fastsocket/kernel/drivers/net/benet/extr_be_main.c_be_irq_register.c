
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; int irq; } ;
struct be_adapter {int isr_registered; TYPE_1__* pdev; int * eq_obj; struct net_device* netdev; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int IRQF_SHARED ;
 int be_intx ;
 int be_msix_register (struct be_adapter*) ;
 int be_physfn (struct be_adapter*) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ msix_enabled (struct be_adapter*) ;
 int request_irq (int ,int ,int ,int ,int *) ;

__attribute__((used)) static int be_irq_register(struct be_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int status;

 if (msix_enabled(adapter)) {
  status = be_msix_register(adapter);
  if (status == 0)
   goto done;

  if (!be_physfn(adapter))
   return status;
 }


 netdev->irq = adapter->pdev->irq;
 status = request_irq(netdev->irq, be_intx, IRQF_SHARED, netdev->name,
        &adapter->eq_obj[0]);
 if (status) {
  dev_err(&adapter->pdev->dev,
   "INTx request IRQ failed - err %d\n", status);
  return status;
 }
done:
 adapter->isr_registered = 1;
 return 0;
}
