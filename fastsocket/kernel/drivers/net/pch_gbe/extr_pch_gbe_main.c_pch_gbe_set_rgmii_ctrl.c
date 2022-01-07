
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct TYPE_2__ {int RGMII_CTRL; } ;


 unsigned long PCH_GBE_MAC_RGMII_CTRL_SETTING ;
 unsigned long PCH_GBE_RGMII_RATE_125M ;
 unsigned long PCH_GBE_RGMII_RATE_25M ;
 unsigned long PCH_GBE_RGMII_RATE_2_5M ;



 int iowrite32 (unsigned long,int *) ;

__attribute__((used)) static void pch_gbe_set_rgmii_ctrl(struct pch_gbe_adapter *adapter, u16 speed,
        u16 duplex)
{
 struct pch_gbe_hw *hw = &adapter->hw;
 unsigned long rgmii = 0;
 rgmii = 0;
 iowrite32(rgmii, &hw->reg->RGMII_CTRL);

}
