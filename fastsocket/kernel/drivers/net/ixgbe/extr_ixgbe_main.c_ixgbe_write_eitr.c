
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ixgbe_q_vector {int v_idx; int itr; struct ixgbe_adapter* adapter; } ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_EITR (int) ;
 int IXGBE_EITR_CNT_WDIS ;
 int IXGBE_MAX_EITR ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;




void ixgbe_write_eitr(struct ixgbe_q_vector *q_vector)
{
 struct ixgbe_adapter *adapter = q_vector->adapter;
 struct ixgbe_hw *hw = &adapter->hw;
 int v_idx = q_vector->v_idx;
 u32 itr_reg = q_vector->itr & IXGBE_MAX_EITR;

 switch (adapter->hw.mac.type) {
 case 130:

  itr_reg |= (itr_reg << 16);
  break;
 case 129:
 case 128:




  itr_reg |= IXGBE_EITR_CNT_WDIS;
  break;
 default:
  break;
 }
 IXGBE_WRITE_REG(hw, IXGBE_EITR(v_idx), itr_reg);
}
