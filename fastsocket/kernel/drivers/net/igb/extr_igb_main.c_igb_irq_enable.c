
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int eims_enable_mask; scalar_t__ vfs_allocated_count; scalar_t__ msix_entries; struct e1000_hw hw; } ;


 int E1000_EIAC ;
 int E1000_EIAM ;
 int E1000_EIMS ;
 int E1000_IAM ;
 int E1000_IMS ;
 int E1000_IMS_DOUTSYNC ;
 int E1000_IMS_DRSTA ;
 int E1000_IMS_LSC ;
 int E1000_IMS_TS ;
 int E1000_IMS_VMMB ;
 int E1000_MBVFIMR ;
 int IMS_ENABLE_MASK ;
 scalar_t__ e1000_82580 ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_irq_enable(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 if (adapter->msix_entries) {
  u32 ims = E1000_IMS_LSC | E1000_IMS_DOUTSYNC | E1000_IMS_DRSTA;
  u32 regval = rd32(E1000_EIAC);
  wr32(E1000_EIAC, regval | adapter->eims_enable_mask);
  regval = rd32(E1000_EIAM);
  wr32(E1000_EIAM, regval | adapter->eims_enable_mask);
  wr32(E1000_EIMS, adapter->eims_enable_mask);
  if (adapter->vfs_allocated_count) {
   wr32(E1000_MBVFIMR, 0xFF);
   ims |= E1000_IMS_VMMB;
  }




  if (hw->mac.type >= e1000_82580)
   ims |= E1000_IMS_TS;
  wr32(E1000_IMS, ims);
 } else {
  wr32(E1000_IMS, IMS_ENABLE_MASK |
    E1000_IMS_DRSTA);
  wr32(E1000_IAM, IMS_ENABLE_MASK |
    E1000_IMS_DRSTA);
 }
}
