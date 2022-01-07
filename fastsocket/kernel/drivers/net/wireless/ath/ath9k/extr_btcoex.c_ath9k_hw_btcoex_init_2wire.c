
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_btcoex_hw {int btactive_gpio; } ;
struct ath_hw {struct ath_btcoex_hw btcoex_hw; } ;


 int AR_GPIO_INPUT_EN_VAL ;
 int AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB ;
 int AR_GPIO_INPUT_EN_VAL_BT_FREQUENCY_DEF ;
 int AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_DEF ;
 int AR_GPIO_INPUT_MUX1 ;
 int AR_GPIO_INPUT_MUX1_BT_ACTIVE ;
 int REG_CLR_BIT (struct ath_hw*,int ,int) ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,int ) ;
 int REG_SET_BIT (struct ath_hw*,int ,int ) ;
 int ath9k_hw_cfg_gpio_input (struct ath_hw*,int ) ;

void ath9k_hw_btcoex_init_2wire(struct ath_hw *ah)
{
 struct ath_btcoex_hw *btcoex_hw = &ah->btcoex_hw;


 REG_CLR_BIT(ah, AR_GPIO_INPUT_EN_VAL,
      (AR_GPIO_INPUT_EN_VAL_BT_PRIORITY_DEF |
       AR_GPIO_INPUT_EN_VAL_BT_FREQUENCY_DEF));

 REG_SET_BIT(ah, AR_GPIO_INPUT_EN_VAL,
      AR_GPIO_INPUT_EN_VAL_BT_ACTIVE_BB);


 REG_RMW_FIELD(ah, AR_GPIO_INPUT_MUX1,
        AR_GPIO_INPUT_MUX1_BT_ACTIVE,
        btcoex_hw->btactive_gpio);


 ath9k_hw_cfg_gpio_input(ah, btcoex_hw->btactive_gpio);
}
