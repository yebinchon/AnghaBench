
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct e1000_adapter {TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static void e1000_free_irq(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 free_irq(adapter->pdev->irq, netdev);
}
