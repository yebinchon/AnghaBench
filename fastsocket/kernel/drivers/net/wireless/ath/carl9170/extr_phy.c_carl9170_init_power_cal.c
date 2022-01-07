
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int AR9170_PHY_REG_POWER_TX_RATE1 ;
 int AR9170_PHY_REG_POWER_TX_RATE2 ;
 int AR9170_PHY_REG_POWER_TX_RATE3 ;
 int AR9170_PHY_REG_POWER_TX_RATE4 ;
 int AR9170_PHY_REG_POWER_TX_RATE5 ;
 int AR9170_PHY_REG_POWER_TX_RATE6 ;
 int AR9170_PHY_REG_POWER_TX_RATE7 ;
 int AR9170_PHY_REG_POWER_TX_RATE8 ;
 int AR9170_PHY_REG_POWER_TX_RATE9 ;
 int AR9170_PHY_REG_POWER_TX_RATE_MAX ;
 int carl9170_regwrite (int ,int) ;
 int carl9170_regwrite_begin (struct ar9170*) ;
 int carl9170_regwrite_finish () ;
 int carl9170_regwrite_result () ;

__attribute__((used)) static int carl9170_init_power_cal(struct ar9170 *ar)
{
 carl9170_regwrite_begin(ar);

 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE_MAX, 0x7f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE1, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE2, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE3, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE4, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE5, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE6, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE7, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE8, 0x3f3f3f3f);
 carl9170_regwrite(AR9170_PHY_REG_POWER_TX_RATE9, 0x3f3f3f3f);

 carl9170_regwrite_finish();
 return carl9170_regwrite_result();
}
