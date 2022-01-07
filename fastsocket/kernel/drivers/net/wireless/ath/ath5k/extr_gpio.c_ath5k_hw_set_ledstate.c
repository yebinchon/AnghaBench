
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;





 int AR5K_PCICFG ;
 int AR5K_PCICFG_LED ;
 int AR5K_PCICFG_LEDMODE ;
 int AR5K_PCICFG_LEDMODE_PROM ;
 int AR5K_PCICFG_LEDMODE_PROP ;
 int AR5K_PCICFG_LED_ASSOC ;
 int AR5K_PCICFG_LED_BCTL ;
 int AR5K_PCICFG_LED_NONE ;
 int AR5K_PCICFG_LED_PEND ;
 int AR5K_REG_DISABLE_BITS (struct ath5k_hw*,int ,int) ;
 int AR5K_REG_ENABLE_BITS (struct ath5k_hw*,int ,int) ;

void
ath5k_hw_set_ledstate(struct ath5k_hw *ah, unsigned int state)
{
 u32 led;

 u32 led_5210;


 if (ah->ah_version != AR5K_AR5210)
  AR5K_REG_DISABLE_BITS(ah, AR5K_PCICFG,
   AR5K_PCICFG_LEDMODE | AR5K_PCICFG_LED);
 else
  AR5K_REG_DISABLE_BITS(ah, AR5K_PCICFG, AR5K_PCICFG_LED);




 switch (state) {
 case 128:
 case 131:
  led = AR5K_PCICFG_LEDMODE_PROP | AR5K_PCICFG_LED_PEND;
  led_5210 = AR5K_PCICFG_LED_PEND | AR5K_PCICFG_LED_BCTL;
  break;

 case 130:
  led = AR5K_PCICFG_LEDMODE_PROP | AR5K_PCICFG_LED_NONE;
  led_5210 = AR5K_PCICFG_LED_PEND;
  break;

 case 132:
 case 129:
  led = AR5K_PCICFG_LEDMODE_PROP | AR5K_PCICFG_LED_ASSOC;
  led_5210 = AR5K_PCICFG_LED_ASSOC;
  break;

 default:
  led = AR5K_PCICFG_LEDMODE_PROM | AR5K_PCICFG_LED_NONE;
  led_5210 = AR5K_PCICFG_LED_PEND;
  break;
 }


 if (ah->ah_version != AR5K_AR5210)
  AR5K_REG_ENABLE_BITS(ah, AR5K_PCICFG, led);
 else
  AR5K_REG_ENABLE_BITS(ah, AR5K_PCICFG, led_5210);
}
