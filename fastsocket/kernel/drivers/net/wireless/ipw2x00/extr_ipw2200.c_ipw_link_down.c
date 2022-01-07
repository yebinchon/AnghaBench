
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int scan_event; int request_scan; int gather_stats; int adhoc_check; int request_passive_scan; int request_direct_scan; int net_dev; } ;


 int STATUS_EXIT_PENDING ;
 int cancel_delayed_work (int *) ;
 int ipw_led_link_down (struct ipw_priv*) ;
 int ipw_reset_stats (struct ipw_priv*) ;
 int netif_carrier_off (int ) ;
 int notify_wx_assoc_event (struct ipw_priv*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void ipw_link_down(struct ipw_priv *priv)
{
 ipw_led_link_down(priv);
 netif_carrier_off(priv->net_dev);
 notify_wx_assoc_event(priv);


 cancel_delayed_work(&priv->request_scan);
 cancel_delayed_work(&priv->request_direct_scan);
 cancel_delayed_work(&priv->request_passive_scan);
 cancel_delayed_work(&priv->adhoc_check);
 cancel_delayed_work(&priv->gather_stats);

 ipw_reset_stats(priv);

 if (!(priv->status & STATUS_EXIT_PENDING)) {

  schedule_delayed_work(&priv->request_scan, 0);
 } else
  cancel_delayed_work(&priv->scan_event);
}
