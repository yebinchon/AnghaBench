
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct nic {scalar_t__ phy; int leds; scalar_t__ mac; int blink_timer; TYPE_1__ mii; int netdev; } ;


 int E100_82552_LED_OFF ;
 int E100_82552_LED_ON ;
 int E100_82552_LED_OVERRIDE ;
 int HZ ;
 int MII_LED_CONTROL ;
 scalar_t__ jiffies ;
 scalar_t__ mac_82559_D101M ;
 int mdio_write (int ,int ,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ phy_82552_v ;

__attribute__((used)) static void e100_blink_led(unsigned long data)
{
 struct nic *nic = (struct nic *)data;
 enum led_state {
  led_on = 0x01,
  led_off = 0x04,
  led_on_559 = 0x05,
  led_on_557 = 0x07,
 };
 u16 led_reg = MII_LED_CONTROL;

 if (nic->phy == phy_82552_v) {
  led_reg = E100_82552_LED_OVERRIDE;

  nic->leds = (nic->leds == E100_82552_LED_ON) ?
              E100_82552_LED_OFF : E100_82552_LED_ON;
 } else {
  nic->leds = (nic->leds & led_on) ? led_off :
              (nic->mac < mac_82559_D101M) ? led_on_557 :
              led_on_559;
 }
 mdio_write(nic->netdev, nic->mii.phy_id, led_reg, nic->leds);
 mod_timer(&nic->blink_timer, jiffies + HZ / 4);
}
