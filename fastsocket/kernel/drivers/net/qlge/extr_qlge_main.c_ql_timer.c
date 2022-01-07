
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ql_adapter {TYPE_1__ timer; int ndev; int pdev; } ;


 int HZ ;
 int STS ;
 int add_timer (TYPE_1__*) ;
 int ifup ;
 scalar_t__ jiffies ;
 int netif_err (struct ql_adapter*,int ,int ,char*,int ) ;
 scalar_t__ pci_channel_offline (int ) ;
 int ql_read32 (struct ql_adapter*,int ) ;

__attribute__((used)) static void ql_timer(unsigned long data)
{
 struct ql_adapter *qdev = (struct ql_adapter *)data;
 u32 var = 0;

 var = ql_read32(qdev, STS);
 if (pci_channel_offline(qdev->pdev)) {
  netif_err(qdev, ifup, qdev->ndev, "EEH STS = 0x%.08x.\n", var);
  return;
 }

 qdev->timer.expires = jiffies + (5*HZ);
 add_timer(&qdev->timer);
}
