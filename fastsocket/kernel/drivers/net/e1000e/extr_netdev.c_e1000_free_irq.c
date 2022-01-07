
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct e1000_adapter {TYPE_1__* pdev; TYPE_2__* msix_entries; struct net_device* netdev; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;


 int free_irq (int ,struct net_device*) ;

__attribute__((used)) static void e1000_free_irq(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 if (adapter->msix_entries) {
  int vector = 0;

  free_irq(adapter->msix_entries[vector].vector, netdev);
  vector++;

  free_irq(adapter->msix_entries[vector].vector, netdev);
  vector++;


  free_irq(adapter->msix_entries[vector].vector, netdev);
  return;
 }

 free_irq(adapter->pdev->irq, netdev);
}
