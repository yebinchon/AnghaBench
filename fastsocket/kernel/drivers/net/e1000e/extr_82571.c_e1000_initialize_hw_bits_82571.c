
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_DMA_DYN_CLK_EN ;
 int E1000_PBA_ECC_CORR_EN ;
 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_TCTL_MULR ;
 int GCR ;
 int GCR2 ;
 int PBA_ECC ;
 int RFCTL ;
 int TARC (int) ;
 int TCTL ;
 int TXDCTL (int) ;





 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_initialize_hw_bits_82571(struct e1000_hw *hw)
{
 u32 reg;


 reg = er32(TXDCTL(0));
 reg |= (1 << 22);
 ew32(TXDCTL(0), reg);


 reg = er32(TXDCTL(1));
 reg |= (1 << 22);
 ew32(TXDCTL(1), reg);


 reg = er32(TARC(0));
 reg &= ~(0xF << 27);
 switch (hw->mac.type) {
 case 132:
 case 131:
  reg |= (1 << 23) | (1 << 24) | (1 << 25) | (1 << 26);
  break;
 case 129:
 case 128:
  reg |= (1 << 26);
  break;
 default:
  break;
 }
 ew32(TARC(0), reg);


 reg = er32(TARC(1));
 switch (hw->mac.type) {
 case 132:
 case 131:
  reg &= ~((1 << 29) | (1 << 30));
  reg |= (1 << 22) | (1 << 24) | (1 << 25) | (1 << 26);
  if (er32(TCTL) & E1000_TCTL_MULR)
   reg &= ~(1 << 28);
  else
   reg |= (1 << 28);
  ew32(TARC(1), reg);
  break;
 default:
  break;
 }


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  reg = er32(CTRL);
  reg &= ~(1 << 29);
  ew32(CTRL, reg);
  break;
 default:
  break;
 }


 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  reg = er32(CTRL_EXT);
  reg &= ~(1 << 23);
  reg |= (1 << 22);
  ew32(CTRL_EXT, reg);
  break;
 default:
  break;
 }

 if (hw->mac.type == 132) {
  reg = er32(PBA_ECC);
  reg |= E1000_PBA_ECC_CORR_EN;
  ew32(PBA_ECC, reg);
 }




 if ((hw->mac.type == 132) || (hw->mac.type == 131)) {
  reg = er32(CTRL_EXT);
  reg &= ~E1000_CTRL_EXT_DMA_DYN_CLK_EN;
  ew32(CTRL_EXT, reg);
 }




 if (hw->mac.type <= 130) {
  reg = er32(RFCTL);
  reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
  ew32(RFCTL, reg);
 }


 switch (hw->mac.type) {
 case 129:
 case 128:
  reg = er32(GCR);
  reg |= (1 << 22);
  ew32(GCR, reg);







  reg = er32(GCR2);
  reg |= 1;
  ew32(GCR2, reg);
  break;
 default:
  break;
 }
}
