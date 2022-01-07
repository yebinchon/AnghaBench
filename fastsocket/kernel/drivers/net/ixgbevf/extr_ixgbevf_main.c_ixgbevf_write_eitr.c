
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbevf_q_vector {int v_idx; int itr; struct ixgbevf_adapter* adapter; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_EITR_CNT_WDIS ;
 int IXGBE_MAX_EITR ;
 int IXGBE_VTEITR (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static void ixgbevf_write_eitr(struct ixgbevf_q_vector *q_vector)
{
 struct ixgbevf_adapter *adapter = q_vector->adapter;
 struct ixgbe_hw *hw = &adapter->hw;
 int v_idx = q_vector->v_idx;
 u32 itr_reg = q_vector->itr & IXGBE_MAX_EITR;





 itr_reg |= IXGBE_EITR_CNT_WDIS;

 IXGBE_WRITE_REG(hw, IXGBE_VTEITR(v_idx), itr_reg);
}
