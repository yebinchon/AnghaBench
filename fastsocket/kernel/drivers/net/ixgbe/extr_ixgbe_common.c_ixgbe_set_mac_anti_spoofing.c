
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_PFVFSPOOF (int) ;
 int IXGBE_PFVFSPOOF_REG_COUNT ;
 int IXGBE_SPOOF_MACAS_MASK ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 scalar_t__ ixgbe_mac_82598EB ;

void ixgbe_set_mac_anti_spoofing(struct ixgbe_hw *hw, bool enable, int pf)
{
 int j;
 int pf_target_reg = pf >> 3;
 int pf_target_shift = pf % 8;
 u32 pfvfspoof = 0;

 if (hw->mac.type == ixgbe_mac_82598EB)
  return;

 if (enable)
  pfvfspoof = IXGBE_SPOOF_MACAS_MASK;





 for (j = 0; j < pf_target_reg; j++)
  IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(j), pfvfspoof);





 pfvfspoof &= (1 << pf_target_shift) - 1;
 IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(j), pfvfspoof);





 for (j++; j < IXGBE_PFVFSPOOF_REG_COUNT; j++)
  IXGBE_WRITE_REG(hw, IXGBE_PFVFSPOOF(j), 0);
}
