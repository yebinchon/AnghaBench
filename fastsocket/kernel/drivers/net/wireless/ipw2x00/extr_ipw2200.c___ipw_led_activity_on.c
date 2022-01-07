
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int config; int status; int led_act_off; int led_activity_on; } ;


 int CFG_NO_LED ;
 int IPW_DEBUG_LED (char*,...) ;
 int IPW_EVENT_REG ;
 int LD_TIME_ACT_ON ;
 int STATUS_LED_ACT_ON ;
 int STATUS_RF_KILL_MASK ;
 int cancel_delayed_work (int *) ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;
 int ipw_register_toggle (int ) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void __ipw_led_activity_on(struct ipw_priv *priv)
{
 u32 led;

 if (priv->config & CFG_NO_LED)
  return;

 if (priv->status & STATUS_RF_KILL_MASK)
  return;

 if (!(priv->status & STATUS_LED_ACT_ON)) {
  led = ipw_read_reg32(priv, IPW_EVENT_REG);
  led |= priv->led_activity_on;

  led = ipw_register_toggle(led);

  IPW_DEBUG_LED("Reg: 0x%08X\n", led);
  ipw_write_reg32(priv, IPW_EVENT_REG, led);

  IPW_DEBUG_LED("Activity LED On\n");

  priv->status |= STATUS_LED_ACT_ON;

  cancel_delayed_work(&priv->led_act_off);
  schedule_delayed_work(&priv->led_act_off, LD_TIME_ACT_ON);
 } else {

  cancel_delayed_work(&priv->led_act_off);
  schedule_delayed_work(&priv->led_act_off, LD_TIME_ACT_ON);
 }
}
