
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device {int start_remove; struct net_device* ndev; } ;
struct net_device_context {int work; int dwork; } ;
struct net_device {int dummy; } ;
struct hv_device {int device; } ;


 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int dev_err (int *,char*) ;
 int free_netdev (struct net_device*) ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int rndis_filter_device_remove (struct hv_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int netvsc_remove(struct hv_device *dev)
{
 struct net_device *net;
 struct net_device_context *ndev_ctx;
 struct netvsc_device *net_device;

 net_device = hv_get_drvdata(dev);
 net = net_device->ndev;

 if (net == ((void*)0)) {
  dev_err(&dev->device, "No net device to remove\n");
  return 0;
 }

 net_device->start_remove = 1;

 ndev_ctx = netdev_priv(net);
 cancel_delayed_work_sync(&ndev_ctx->dwork);
 cancel_work_sync(&ndev_ctx->work);


 netif_tx_disable(net);

 unregister_netdev(net);





 rndis_filter_device_remove(dev);

 free_netdev(net);
 return 0;
}
