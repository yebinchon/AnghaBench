
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct net_device {int name; } ;
struct ixgbe_adapter {int flags; int test_icr; int hw; scalar_t__ msix_entries; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int irq; } ;


 int IRQF_PROBE_SHARED ;
 int IRQF_SHARED ;
 int IXGBE_EICS ;
 int IXGBE_EIMC ;
 int IXGBE_EIMS ;
 int IXGBE_FLAG_MSI_ENABLED ;
 int IXGBE_WRITE_FLUSH (int *) ;
 int IXGBE_WRITE_REG (int *,int ,int) ;
 int e_info (int ,char*,char*) ;
 int free_irq (int,struct net_device*) ;
 int hw ;
 int ixgbe_test_intr ;
 scalar_t__ request_irq (int,int ,int ,int ,struct net_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ixgbe_intr_test(struct ixgbe_adapter *adapter, u64 *data)
{
 struct net_device *netdev = adapter->netdev;
 u32 mask, i = 0, shared_int = 1;
 u32 irq = adapter->pdev->irq;

 *data = 0;


 if (adapter->msix_entries) {

  return 0;
 } else if (adapter->flags & IXGBE_FLAG_MSI_ENABLED) {
  shared_int = 0;
  if (request_irq(irq, ixgbe_test_intr, 0, netdev->name,
    netdev)) {
   *data = 1;
   return -1;
  }
 } else if (!request_irq(irq, ixgbe_test_intr, IRQF_PROBE_SHARED,
                         netdev->name, netdev)) {
  shared_int = 0;
 } else if (request_irq(irq, ixgbe_test_intr, IRQF_SHARED,
                        netdev->name, netdev)) {
  *data = 1;
  return -1;
 }
 e_info(hw, "testing %s interrupt\n", shared_int ?
        "shared" : "unshared");


 IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, 0xFFFFFFFF);
 IXGBE_WRITE_FLUSH(&adapter->hw);
 usleep_range(10000, 20000);


 for (; i < 10; i++) {

  mask = 1 << i;

  if (!shared_int) {







   adapter->test_icr = 0;
   IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC,
                   ~mask & 0x00007FFF);
   IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS,
                   ~mask & 0x00007FFF);
   IXGBE_WRITE_FLUSH(&adapter->hw);
   usleep_range(10000, 20000);

   if (adapter->test_icr & mask) {
    *data = 3;
    break;
   }
  }







  adapter->test_icr = 0;
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMS, mask);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS, mask);
  IXGBE_WRITE_FLUSH(&adapter->hw);
  usleep_range(10000, 20000);

  if (!(adapter->test_icr &mask)) {
   *data = 4;
   break;
  }

  if (!shared_int) {







   adapter->test_icr = 0;
   IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC,
                   ~mask & 0x00007FFF);
   IXGBE_WRITE_REG(&adapter->hw, IXGBE_EICS,
                   ~mask & 0x00007FFF);
   IXGBE_WRITE_FLUSH(&adapter->hw);
   usleep_range(10000, 20000);

   if (adapter->test_icr) {
    *data = 5;
    break;
   }
  }
 }


 IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, 0xFFFFFFFF);
 IXGBE_WRITE_FLUSH(&adapter->hw);
 usleep_range(10000, 20000);


 free_irq(irq, netdev);

 return *data;
}
