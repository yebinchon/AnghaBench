
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef enum efx_led_mode { ____Placeholder_efx_led_mode } efx_led_mode ;




 int QUAKE_LED_LINK_STAT ;
 int QUAKE_LED_OFF ;
 int QUAKE_LED_ON ;
 int QUAKE_LED_RXLINK ;
 int SFN4112F_LINK_LED ;
 int falcon_qt202x_set_led (struct efx_nic*,int ,int) ;

__attribute__((used)) static void sfn4112f_set_id_led(struct efx_nic *efx, enum efx_led_mode mode)
{
 int reg;

 switch (mode) {
 case 129:
  reg = QUAKE_LED_OFF;
  break;
 case 128:
  reg = QUAKE_LED_ON;
  break;
 default:
  reg = QUAKE_LED_RXLINK | QUAKE_LED_LINK_STAT;
  break;
 }

 falcon_qt202x_set_led(efx, SFN4112F_LINK_LED, reg);
}
