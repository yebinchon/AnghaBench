
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ num_vfs; TYPE_2__ hw; } ;


 int IXGBE_READ_REG (TYPE_2__*,int ) ;
 int IXGBE_SSVPC ;
 int drv ;
 int e_warn (int ,char*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;

__attribute__((used)) static void ixgbe_spoof_check(struct ixgbe_adapter *adapter)
{
 u32 ssvpc;


 if (adapter->hw.mac.type == ixgbe_mac_82598EB ||
     adapter->num_vfs == 0)
  return;

 ssvpc = IXGBE_READ_REG(&adapter->hw, IXGBE_SSVPC);





 if (!ssvpc)
  return;

 e_warn(drv, "%d Spoofed packets detected\n", ssvpc);
}
