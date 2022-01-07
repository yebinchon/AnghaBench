
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; TYPE_2__* ring_feature; int netdev; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int indices; } ;


 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_MTQC ;
 int IXGBE_MTQC_32VF ;
 int IXGBE_MTQC_4TC_4TQ ;
 int IXGBE_MTQC_64Q_1PB ;
 int IXGBE_MTQC_64VF ;
 int IXGBE_MTQC_8TC_8TQ ;
 int IXGBE_MTQC_RT_ENA ;
 int IXGBE_MTQC_VT_ENA ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RTTDCS ;
 int IXGBE_RTTDCS_ARBDIS ;
 int IXGBE_SECTXMINIFG ;
 int IXGBE_SECTX_DCB ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_RSS ;
 scalar_t__ ixgbe_mac_82598EB ;
 int netdev_get_num_tc (int ) ;

__attribute__((used)) static void ixgbe_setup_mtqc(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 rttdcs, mtqc;
 u8 tcs = netdev_get_num_tc(adapter->netdev);

 if (hw->mac.type == ixgbe_mac_82598EB)
  return;


 rttdcs = IXGBE_READ_REG(hw, IXGBE_RTTDCS);
 rttdcs |= IXGBE_RTTDCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTTDCS, rttdcs);


 if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED) {
  mtqc = IXGBE_MTQC_VT_ENA;
  if (tcs > 4)
   mtqc |= IXGBE_MTQC_RT_ENA | IXGBE_MTQC_8TC_8TQ;
  else if (tcs > 1)
   mtqc |= IXGBE_MTQC_RT_ENA | IXGBE_MTQC_4TC_4TQ;
  else if (adapter->ring_feature[RING_F_RSS].indices == 4)
   mtqc |= IXGBE_MTQC_32VF;
  else
   mtqc |= IXGBE_MTQC_64VF;
 } else {
  if (tcs > 4)
   mtqc = IXGBE_MTQC_RT_ENA | IXGBE_MTQC_8TC_8TQ;
  else if (tcs > 1)
   mtqc = IXGBE_MTQC_RT_ENA | IXGBE_MTQC_4TC_4TQ;
  else
   mtqc = IXGBE_MTQC_64Q_1PB;
 }

 IXGBE_WRITE_REG(hw, IXGBE_MTQC, mtqc);


 if (tcs) {
  u32 sectx = IXGBE_READ_REG(hw, IXGBE_SECTXMINIFG);
  sectx |= IXGBE_SECTX_DCB;
  IXGBE_WRITE_REG(hw, IXGBE_SECTXMINIFG, sectx);
 }


 rttdcs &= ~IXGBE_RTTDCS_ARBDIS;
 IXGBE_WRITE_REG(hw, IXGBE_RTTDCS, rttdcs);
}
