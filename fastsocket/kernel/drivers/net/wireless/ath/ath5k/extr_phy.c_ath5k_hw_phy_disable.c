
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;


 int AR5K_PHY_ACT ;
 int AR5K_PHY_ACT_DISABLE ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

int ath5k_hw_phy_disable(struct ath5k_hw *ah)
{

 ath5k_hw_reg_write(ah, AR5K_PHY_ACT_DISABLE, AR5K_PHY_ACT);

 return 0;
}
