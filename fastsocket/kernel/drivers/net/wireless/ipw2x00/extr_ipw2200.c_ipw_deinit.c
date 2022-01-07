
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; } ;


 int IPW_DEBUG_INFO (char*,...) ;
 int STATUS_ASSOCIATED ;
 int STATUS_DISASSOCIATING ;
 int STATUS_INIT ;
 int STATUS_SCANNING ;
 int ipw_abort_scan (struct ipw_priv*) ;
 int ipw_disassociate (struct ipw_priv*) ;
 int ipw_led_shutdown (struct ipw_priv*) ;
 int ipw_send_card_disable (struct ipw_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ipw_deinit(struct ipw_priv *priv)
{
 int i;

 if (priv->status & STATUS_SCANNING) {
  IPW_DEBUG_INFO("Aborting scan during shutdown.\n");
  ipw_abort_scan(priv);
 }

 if (priv->status & STATUS_ASSOCIATED) {
  IPW_DEBUG_INFO("Disassociating during shutdown.\n");
  ipw_disassociate(priv);
 }

 ipw_led_shutdown(priv);




 for (i = 1000; i && (priv->status &
        (STATUS_DISASSOCIATING |
         STATUS_ASSOCIATED | STATUS_SCANNING)); i--)
  udelay(10);

 if (priv->status & (STATUS_DISASSOCIATING |
       STATUS_ASSOCIATED | STATUS_SCANNING))
  IPW_DEBUG_INFO("Still associated or scanning...\n");
 else
  IPW_DEBUG_INFO("Took %dms to de-init\n", 1000 - i);


 ipw_send_card_disable(priv, 0);

 priv->status &= ~STATUS_INIT;
}
