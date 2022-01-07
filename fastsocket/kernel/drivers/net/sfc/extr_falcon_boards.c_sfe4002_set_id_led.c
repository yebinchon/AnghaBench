
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef enum efx_led_mode { ____Placeholder_efx_led_mode } efx_led_mode ;


 int EFX_LED_ON ;
 int QUAKE_LED_OFF ;
 int QUAKE_LED_ON ;
 int SFE4002_FAULT_LED ;
 int falcon_qt202x_set_led (struct efx_nic*,int ,int ) ;

__attribute__((used)) static void sfe4002_set_id_led(struct efx_nic *efx, enum efx_led_mode mode)
{
 falcon_qt202x_set_led(
  efx, SFE4002_FAULT_LED,
  (mode == EFX_LED_ON) ? QUAKE_LED_ON : QUAKE_LED_OFF);
}
