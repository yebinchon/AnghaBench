
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int flags; int name; int * wireless_handlers; int * ethtool_ops; int * netdev_ops; struct lbs_private* ml_priv; } ;
struct lbs_private {int mesh_ssid_len; int wol_criteria; int wol_gpio; int mesh_ssid; int sync_channel; int mcast_work; int scan_work; int assoc_work; int work_thread; int main_thread; int waitq; int * rtap_net_dev; scalar_t__ infra_open; scalar_t__ mesh_open; void* card; struct net_device* dev; } ;
struct device {int dummy; } ;


 int HZ ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int LBS_DEB_MAIN ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 struct net_device* alloc_etherdev (int) ;
 int create_singlethread_workqueue (char*) ;
 int free_netdev (struct net_device*) ;
 int init_waitqueue_head (int *) ;
 int kthread_run (int ,struct net_device*,char*) ;
 int lbs_association_worker ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,struct lbs_private*) ;
 int lbs_deb_thread (char*) ;
 int lbs_ethtool_ops ;
 int lbs_free_adapter (struct lbs_private*) ;
 int lbs_handler_def ;
 scalar_t__ lbs_init_adapter (struct lbs_private*) ;
 int lbs_netdev_ops ;
 int lbs_pr_err (char*) ;
 int lbs_scan_worker ;
 int lbs_set_mcast_worker ;
 int lbs_sync_channel_worker ;
 int lbs_thread ;
 struct lbs_private* netdev_priv (struct net_device*) ;
 int sprintf (int ,char*) ;
 int strcpy (int ,char*) ;

struct lbs_private *lbs_add_card(void *card, struct device *dmdev)
{
 struct net_device *dev = ((void*)0);
 struct lbs_private *priv = ((void*)0);

 lbs_deb_enter(LBS_DEB_MAIN);


 dev = alloc_etherdev(sizeof(struct lbs_private));
 if (!dev) {
  lbs_pr_err("init wlanX device failed\n");
  goto done;
 }
 priv = netdev_priv(dev);
 dev->ml_priv = priv;

 if (lbs_init_adapter(priv)) {
  lbs_pr_err("failed to initialize adapter structure.\n");
  goto err_init_adapter;
 }

 priv->dev = dev;
 priv->card = card;
 priv->mesh_open = 0;
 priv->infra_open = 0;


  dev->netdev_ops = &lbs_netdev_ops;
 dev->watchdog_timeo = 5 * HZ;
 dev->ethtool_ops = &lbs_ethtool_ops;



 dev->flags |= IFF_BROADCAST | IFF_MULTICAST;

 SET_NETDEV_DEV(dev, dmdev);

 priv->rtap_net_dev = ((void*)0);
 strcpy(dev->name, "wlan%d");

 lbs_deb_thread("Starting main thread...\n");
 init_waitqueue_head(&priv->waitq);
 priv->main_thread = kthread_run(lbs_thread, dev, "lbs_main");
 if (IS_ERR(priv->main_thread)) {
  lbs_deb_thread("Error creating main thread.\n");
  goto err_init_adapter;
 }

 priv->work_thread = create_singlethread_workqueue("lbs_worker");
 INIT_DELAYED_WORK(&priv->assoc_work, lbs_association_worker);
 INIT_DELAYED_WORK(&priv->scan_work, lbs_scan_worker);
 INIT_WORK(&priv->mcast_work, lbs_set_mcast_worker);
 INIT_WORK(&priv->sync_channel, lbs_sync_channel_worker);

 sprintf(priv->mesh_ssid, "mesh");
 priv->mesh_ssid_len = 4;

 priv->wol_criteria = 0xffffffff;
 priv->wol_gpio = 0xff;

 goto done;

err_init_adapter:
 lbs_free_adapter(priv);
 free_netdev(dev);
 priv = ((void*)0);

done:
 lbs_deb_leave_args(LBS_DEB_MAIN, "priv %p", priv);
 return priv;
}
