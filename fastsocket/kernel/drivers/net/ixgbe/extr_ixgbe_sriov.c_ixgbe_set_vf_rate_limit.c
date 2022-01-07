
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ixgbe_ring_feature {int mask; } ;
struct TYPE_4__ {int type; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {int vf_rate_link_speed; TYPE_1__* vfinfo; struct ixgbe_hw hw; struct ixgbe_ring_feature* ring_feature; } ;
struct TYPE_3__ {int tx_rate; } ;


 int IXGBE_RTTBCNRC ;
 int IXGBE_RTTBCNRC_RF_DEC_MASK ;
 int IXGBE_RTTBCNRC_RF_INT_MASK ;
 int IXGBE_RTTBCNRC_RF_INT_SHIFT ;
 int IXGBE_RTTBCNRC_RS_ENA ;
 int IXGBE_RTTBCNRM ;
 int IXGBE_RTTDQSEL ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_VMDQ ;
 int __ALIGN_MASK (int,int ) ;



__attribute__((used)) static void ixgbe_set_vf_rate_limit(struct ixgbe_adapter *adapter, int vf)
{
 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 struct ixgbe_hw *hw = &adapter->hw;
 u32 bcnrc_val = 0;
 u16 queue, queues_per_pool;
 u16 tx_rate = adapter->vfinfo[vf].tx_rate;

 if (tx_rate) {

  bcnrc_val = adapter->vf_rate_link_speed;


  bcnrc_val <<= IXGBE_RTTBCNRC_RF_INT_SHIFT;
  bcnrc_val /= tx_rate;


  bcnrc_val &= IXGBE_RTTBCNRC_RF_INT_MASK |
        IXGBE_RTTBCNRC_RF_DEC_MASK;


  bcnrc_val |= IXGBE_RTTBCNRC_RS_ENA;
 }






 switch (hw->mac.type) {
 case 129:
  IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRM, 0x4);
  break;
 case 128:
  IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRM, 0x14);
  break;
 default:
  break;
 }


 queues_per_pool = __ALIGN_MASK(1, ~vmdq->mask);


 for (queue = 0; queue < queues_per_pool; queue++) {
  unsigned int reg_idx = (vf * queues_per_pool) + queue;

  IXGBE_WRITE_REG(hw, IXGBE_RTTDQSEL, reg_idx);
  IXGBE_WRITE_REG(hw, IXGBE_RTTBCNRC, bcnrc_val);
 }
}
