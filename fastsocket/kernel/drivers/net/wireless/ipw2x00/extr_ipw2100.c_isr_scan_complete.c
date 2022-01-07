
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {int scan_event_now; int scan_event_later; scalar_t__ user_requested_scan; int status; TYPE_1__* ieee; } ;
struct TYPE_2__ {int scans; } ;


 int IPW_DEBUG_SCAN (char*) ;
 int STATUS_SCANNING ;
 int cancel_delayed_work (int *) ;
 int delayed_work_pending (int *) ;
 int msecs_to_jiffies (int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void isr_scan_complete(struct ipw2100_priv *priv, u32 status)
{
 IPW_DEBUG_SCAN("scan complete\n");

 priv->ieee->scans++;
 priv->status &= ~STATUS_SCANNING;


 if (!priv->user_requested_scan) {
  if (!delayed_work_pending(&priv->scan_event_later))
   schedule_delayed_work(&priv->scan_event_later,
           round_jiffies_relative(msecs_to_jiffies(4000)));
 } else {
  priv->user_requested_scan = 0;
  cancel_delayed_work(&priv->scan_event_later);
  schedule_work(&priv->scan_event_now);
 }
}
