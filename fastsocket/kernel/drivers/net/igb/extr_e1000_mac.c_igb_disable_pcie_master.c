
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ bus; } ;
typedef scalar_t__ s32 ;


 int E1000_CTRL ;
 int E1000_CTRL_GIO_MASTER_DISABLE ;
 scalar_t__ E1000_ERR_MASTER_REQUESTS_PENDING ;
 int E1000_STATUS ;
 int E1000_STATUS_GIO_MASTER_ENABLE ;
 scalar_t__ MASTER_DISABLE_TIMEOUT ;
 scalar_t__ e1000_bus_type_pci_express ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int udelay (int) ;
 int wr32 (int ,int) ;

s32 igb_disable_pcie_master(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 timeout = MASTER_DISABLE_TIMEOUT;
 s32 ret_val = 0;

 if (hw->bus.type != e1000_bus_type_pci_express)
  goto out;

 ctrl = rd32(E1000_CTRL);
 ctrl |= E1000_CTRL_GIO_MASTER_DISABLE;
 wr32(E1000_CTRL, ctrl);

 while (timeout) {
  if (!(rd32(E1000_STATUS) &
        E1000_STATUS_GIO_MASTER_ENABLE))
   break;
  udelay(100);
  timeout--;
 }

 if (!timeout) {
  hw_dbg("Master requests are pending.\n");
  ret_val = -E1000_ERR_MASTER_REQUESTS_PENDING;
  goto out;
 }

out:
 return ret_val;
}
