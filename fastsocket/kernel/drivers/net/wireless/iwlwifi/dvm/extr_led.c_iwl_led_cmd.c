
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {unsigned long blink_on; unsigned long blink_off; TYPE_2__* cfg; int status; } ;
struct iwl_led_cmd {void* off; void* on; int interval; int id; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int led_compensation; } ;


 int EBUSY ;
 int IWL_DEBUG_LED (struct iwl_priv*,char*,int ) ;
 int IWL_DEF_LED_INTRVL ;
 int IWL_LED_LINK ;
 unsigned long IWL_LED_SOLID ;
 int STATUS_READY ;
 void* iwl_blink_compensation (struct iwl_priv*,unsigned long,int ) ;
 int iwl_send_led_cmd (struct iwl_priv*,struct iwl_led_cmd*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int iwl_led_cmd(struct iwl_priv *priv,
         unsigned long on,
         unsigned long off)
{
 struct iwl_led_cmd led_cmd = {
  .id = IWL_LED_LINK,
  .interval = IWL_DEF_LED_INTRVL
 };
 int ret;

 if (!test_bit(STATUS_READY, &priv->status))
  return -EBUSY;

 if (priv->blink_on == on && priv->blink_off == off)
  return 0;

 if (off == 0) {

  on = IWL_LED_SOLID;
 }

 IWL_DEBUG_LED(priv, "Led blink time compensation=%u\n",
   priv->cfg->base_params->led_compensation);
 led_cmd.on = iwl_blink_compensation(priv, on,
    priv->cfg->base_params->led_compensation);
 led_cmd.off = iwl_blink_compensation(priv, off,
    priv->cfg->base_params->led_compensation);

 ret = iwl_send_led_cmd(priv, &led_cmd);
 if (!ret) {
  priv->blink_on = on;
  priv->blink_off = off;
 }
 return ret;
}
