
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ subsystem_vendor_id; } ;
struct ixgb_adapter {TYPE_1__ hw; } ;


 int IMS ;
 int IXGB_INT_GPI0 ;
 int IXGB_INT_LSC ;
 int IXGB_INT_RXDMT0 ;
 int IXGB_INT_RXT0 ;
 int IXGB_INT_TXDW ;
 int IXGB_WRITE_FLUSH (TYPE_1__*) ;
 int IXGB_WRITE_REG (TYPE_1__*,int ,int) ;
 scalar_t__ SUN_SUBVENDOR_ID ;

__attribute__((used)) static void
ixgb_irq_enable(struct ixgb_adapter *adapter)
{
 u32 val = IXGB_INT_RXT0 | IXGB_INT_RXDMT0 |
    IXGB_INT_TXDW | IXGB_INT_LSC;
 if (adapter->hw.subsystem_vendor_id == SUN_SUBVENDOR_ID)
  val |= IXGB_INT_GPI0;
 IXGB_WRITE_REG(&adapter->hw, IMS, val);
 IXGB_WRITE_FLUSH(&adapter->hw);
}
