
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int scan_check; int adapter_restart; } ;


 int HZ ;
 int IPW_DEBUG_SCAN (char*,int ) ;
 int IPW_SCAN_CHECK_WATCHDOG ;
 int STATUS_SCANNING ;
 int STATUS_SCAN_ABORTING ;
 int ipw_abort_scan (struct ipw_priv*) ;
 int jiffies_to_msecs (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ipw_scan_check(void *data)
{
 struct ipw_priv *priv = data;

 if (priv->status & STATUS_SCAN_ABORTING) {
  IPW_DEBUG_SCAN("Scan completion watchdog resetting "
          "adapter after (%dms).\n",
          jiffies_to_msecs(IPW_SCAN_CHECK_WATCHDOG));
  schedule_work(&priv->adapter_restart);
 } else if (priv->status & STATUS_SCANNING) {
  IPW_DEBUG_SCAN("Scan completion watchdog aborting scan "
          "after (%dms).\n",
          jiffies_to_msecs(IPW_SCAN_CHECK_WATCHDOG));
  ipw_abort_scan(priv);
  schedule_delayed_work(&priv->scan_check, HZ);
 }
}
