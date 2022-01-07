
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_1__ phy; } ;


 int E1000_RFCTL_IPV6_EX_DIS ;
 int E1000_RFCTL_NEW_IPV6_EXT_DIS ;
 int E1000_TCTL_MULR ;
 int RFCTL ;
 int TARC (int) ;
 int TCTL ;
 int TXDCTL (int) ;
 scalar_t__ e1000_media_type_copper ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_initialize_hw_bits_80003es2lan(struct e1000_hw *hw)
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
 if (hw->phy.media_type != e1000_media_type_copper)
  reg &= ~(1 << 20);
 ew32(TARC(0), reg);


 reg = er32(TARC(1));
 if (er32(TCTL) & E1000_TCTL_MULR)
  reg &= ~(1 << 28);
 else
  reg |= (1 << 28);
 ew32(TARC(1), reg);




 reg = er32(RFCTL);
 reg |= (E1000_RFCTL_IPV6_EX_DIS | E1000_RFCTL_NEW_IPV6_EXT_DIS);
 ew32(RFCTL, reg);
}
