
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipw_priv {int config; scalar_t__ nic_type; int lock; int led_association_on; int led_ofdm_off; int led_ofdm_on; TYPE_1__* assoc_network; int led_association_off; } ;
struct TYPE_2__ {scalar_t__ mode; } ;


 int CFG_NO_LED ;
 scalar_t__ EEPROM_NIC_TYPE_1 ;
 scalar_t__ IEEE_A ;
 scalar_t__ IEEE_G ;
 int IPW_DEBUG_LED (char*,...) ;
 int IPW_EVENT_REG ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;
 int ipw_register_toggle (int ) ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipw_led_band_on(struct ipw_priv *priv)
{
 unsigned long flags;
 u32 led;


 if (priv->config & CFG_NO_LED ||
     priv->nic_type != EEPROM_NIC_TYPE_1 || !priv->assoc_network)
  return;

 spin_lock_irqsave(&priv->lock, flags);

 led = ipw_read_reg32(priv, IPW_EVENT_REG);
 if (priv->assoc_network->mode == IEEE_A) {
  led |= priv->led_ofdm_on;
  led &= priv->led_association_off;
  IPW_DEBUG_LED("Mode LED On: 802.11a\n");
 } else if (priv->assoc_network->mode == IEEE_G) {
  led |= priv->led_ofdm_on;
  led |= priv->led_association_on;
  IPW_DEBUG_LED("Mode LED On: 802.11g\n");
 } else {
  led &= priv->led_ofdm_off;
  led |= priv->led_association_on;
  IPW_DEBUG_LED("Mode LED On: 802.11b\n");
 }

 led = ipw_register_toggle(led);

 IPW_DEBUG_LED("Reg: 0x%08X\n", led);
 ipw_write_reg32(priv, IPW_EVENT_REG, led);

 spin_unlock_irqrestore(&priv->lock, flags);
}
