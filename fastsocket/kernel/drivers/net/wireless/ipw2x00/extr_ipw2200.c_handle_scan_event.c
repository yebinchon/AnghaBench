
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ flags; scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct ipw_priv {int net_dev; int scan_event; scalar_t__ user_requested_scan; } ;


 int SIOCGIWSCAN ;
 int cancel_delayed_work (int *) ;
 int delayed_work_pending (int *) ;
 int msecs_to_jiffies (int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void handle_scan_event(struct ipw_priv *priv)
{

 if (!priv->user_requested_scan) {
  if (!delayed_work_pending(&priv->scan_event))
   schedule_delayed_work(&priv->scan_event,
           round_jiffies_relative(msecs_to_jiffies(4000)));
 } else {
  union iwreq_data wrqu;

  priv->user_requested_scan = 0;
  cancel_delayed_work(&priv->scan_event);

  wrqu.data.length = 0;
  wrqu.data.flags = 0;
  wireless_send_event(priv->net_dev, SIOCGIWSCAN, &wrqu, ((void*)0));
 }
}
