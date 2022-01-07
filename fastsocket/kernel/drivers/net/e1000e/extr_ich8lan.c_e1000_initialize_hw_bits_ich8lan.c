
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_PHYPDEN ;
 int E1000_CTRL_MEHE ;
 int E1000_PBECCSTS_ECC_ENABLE ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_RFCTL_NFSR_DIS ;
 int E1000_RFCTL_NFSW_DIS ;
 int E1000_TCTL_MULR ;
 int PBECCSTS ;
 int RFCTL ;
 int STATUS ;
 int TARC (int) ;
 int TCTL ;
 int TXDCTL (int) ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_pch_lpt ;
 scalar_t__ e1000_pchlan ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_initialize_hw_bits_ich8lan(struct e1000_hw *hw)
{
 u32 reg;


 reg = er32(CTRL_EXT);
 reg |= (1 << 22);

 if (hw->mac.type >= e1000_pchlan)
  reg |= E1000_CTRL_EXT_PHYPDEN;
 ew32(CTRL_EXT, reg);


 reg = er32(TXDCTL(0));
 reg |= (1 << 22);
 ew32(TXDCTL(0), reg);


 reg = er32(TXDCTL(1));
 reg |= (1 << 22);
 ew32(TXDCTL(1), reg);


 reg = er32(TARC(0));
 if (hw->mac.type == e1000_ich8lan)
  reg |= (1 << 28) | (1 << 29);
 reg |= (1 << 23) | (1 << 24) | (1 << 26) | (1 << 27);
 ew32(TARC(0), reg);


 reg = er32(TARC(1));
 if (er32(TCTL) & E1000_TCTL_MULR)
  reg &= ~(1 << 28);
 else
  reg |= (1 << 28);
 reg |= (1 << 24) | (1 << 26) | (1 << 30);
 ew32(TARC(1), reg);


 if (hw->mac.type == e1000_ich8lan) {
  reg = er32(STATUS);
  reg &= ~(1 << 31);
  ew32(STATUS, reg);
 }




 reg = er32(RFCTL);
 reg |= (E1000_RFCTL_NFSW_DIS | E1000_RFCTL_NFSR_DIS);




 if (hw->mac.type == e1000_ich8lan)
  reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
 ew32(RFCTL, reg);


 if (hw->mac.type == e1000_pch_lpt) {
  reg = er32(PBECCSTS);
  reg |= E1000_PBECCSTS_ECC_ENABLE;
  ew32(PBECCSTS, reg);

  reg = er32(CTRL);
  reg |= E1000_CTRL_MEHE;
  ew32(CTRL, reg);
 }
}
