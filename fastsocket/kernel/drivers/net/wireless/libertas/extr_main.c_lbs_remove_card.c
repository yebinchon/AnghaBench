
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_family; int sa_data; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ psmode; int surpriseremoved; struct net_device* dev; int main_thread; int work_thread; int mcast_work; int assoc_work; int scan_work; } ;


 int ARPHRD_ETHER ;
 int CMD_OPTION_WAITFORRSP ;
 int ETH_ALEN ;
 scalar_t__ LBS802_11POWERMODECAM ;
 scalar_t__ LBS802_11POWERMODEMAX_PSP ;
 int LBS_DEB_MAIN ;
 int SIOCGIWAP ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int free_netdev (struct net_device*) ;
 int kthread_stop (int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int lbs_deb_main (char*) ;
 int lbs_free_adapter (struct lbs_private*) ;
 int lbs_ps_wakeup (struct lbs_private*,int ) ;
 int lbs_remove_mesh (struct lbs_private*) ;
 int lbs_remove_rtap (struct lbs_private*) ;
 int memset (int ,int,int ) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,int *) ;

void lbs_remove_card(struct lbs_private *priv)
{
 struct net_device *dev = priv->dev;
 union iwreq_data wrqu;

 lbs_deb_enter(LBS_DEB_MAIN);

 lbs_remove_mesh(priv);
 lbs_remove_rtap(priv);

 dev = priv->dev;

 cancel_delayed_work_sync(&priv->scan_work);
 cancel_delayed_work_sync(&priv->assoc_work);
 cancel_work_sync(&priv->mcast_work);




 lbs_deb_main("destroying worker thread\n");
 destroy_workqueue(priv->work_thread);
 lbs_deb_main("done destroying worker thread\n");

 if (priv->psmode == LBS802_11POWERMODEMAX_PSP) {
  priv->psmode = LBS802_11POWERMODECAM;
  lbs_ps_wakeup(priv, CMD_OPTION_WAITFORRSP);
 }

 memset(wrqu.ap_addr.sa_data, 0xaa, ETH_ALEN);
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 wireless_send_event(priv->dev, SIOCGIWAP, &wrqu, ((void*)0));


 priv->surpriseremoved = 1;
 kthread_stop(priv->main_thread);

 lbs_free_adapter(priv);

 priv->dev = ((void*)0);
 free_netdev(dev);

 lbs_deb_leave(LBS_DEB_MAIN);
}
