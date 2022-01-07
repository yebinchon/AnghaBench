
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int QUAKE_LED_LINK_ACTSTAT ;
 int QUAKE_LED_OFF ;
 int QUAKE_LED_RXLINK ;
 int QUAKE_LED_TXLINK ;
 int SFE4002_FAULT_LED ;
 int SFE4002_RX_LED ;
 int SFE4002_TX_LED ;
 int falcon_qt202x_set_led (struct efx_nic*,int ,int) ;

__attribute__((used)) static void sfe4002_init_phy(struct efx_nic *efx)
{


 falcon_qt202x_set_led(efx, SFE4002_TX_LED,
         QUAKE_LED_TXLINK | QUAKE_LED_LINK_ACTSTAT);
 falcon_qt202x_set_led(efx, SFE4002_RX_LED,
         QUAKE_LED_RXLINK | QUAKE_LED_LINK_ACTSTAT);
 falcon_qt202x_set_led(efx, SFE4002_FAULT_LED, QUAKE_LED_OFF);
}
