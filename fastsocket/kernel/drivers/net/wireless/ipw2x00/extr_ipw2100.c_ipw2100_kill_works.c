
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int stop_rf_kill; int stop_hang_check; int scan_event_later; int scan_event_now; int rf_kill; int hang_check; int wx_event_work; int security_work; int reset_work; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void ipw2100_kill_works(struct ipw2100_priv *priv)
{
 priv->stop_rf_kill = 1;
 priv->stop_hang_check = 1;
 cancel_delayed_work_sync(&priv->reset_work);
 cancel_delayed_work_sync(&priv->security_work);
 cancel_delayed_work_sync(&priv->wx_event_work);
 cancel_delayed_work_sync(&priv->hang_check);
 cancel_delayed_work_sync(&priv->rf_kill);
 cancel_work_sync(&priv->scan_event_now);
 cancel_delayed_work_sync(&priv->scan_event_later);
}
