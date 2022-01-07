
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int name; } ;
struct e1000_adapter {TYPE_1__* pdev; struct net_device* netdev; } ;
typedef int irq_handler_t ;
struct TYPE_2__ {int irq; } ;


 int IRQF_SHARED ;
 int e1000_intr ;
 int e_err (int ,char*,int) ;
 int probe ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;

__attribute__((used)) static int e1000_request_irq(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 irq_handler_t handler = e1000_intr;
 int irq_flags = IRQF_SHARED;
 int err;

 err = request_irq(adapter->pdev->irq, handler, irq_flags, netdev->name,
                   netdev);
 if (err) {
  e_err(probe, "Unable to allocate interrupt Error: %d\n", err);
 }

 return err;
}
