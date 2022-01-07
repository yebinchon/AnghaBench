
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int net_dev; } ;


 int STATUS_EXIT_PENDING ;
 int STATUS_RF_KILL_MASK ;
 int ipw_deinit (struct ipw_priv*) ;
 int ipw_disable_interrupts (struct ipw_priv*) ;
 scalar_t__ ipw_is_init (struct ipw_priv*) ;
 int ipw_led_radio_off (struct ipw_priv*) ;
 int ipw_stop_nic (struct ipw_priv*) ;
 int netif_carrier_off (int ) ;

__attribute__((used)) static void ipw_down(struct ipw_priv *priv)
{
 int exit_pending = priv->status & STATUS_EXIT_PENDING;

 priv->status |= STATUS_EXIT_PENDING;

 if (ipw_is_init(priv))
  ipw_deinit(priv);



 if (!exit_pending)
  priv->status &= ~STATUS_EXIT_PENDING;


 ipw_disable_interrupts(priv);


 priv->status &= STATUS_RF_KILL_MASK | STATUS_EXIT_PENDING;
 netif_carrier_off(priv->net_dev);

 ipw_stop_nic(priv);

 ipw_led_radio_off(priv);
}
