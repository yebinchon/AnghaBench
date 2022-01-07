
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int work; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;


 int cancel_work_sync (int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int rndis_filter_close (struct hv_device*) ;

__attribute__((used)) static int netvsc_close(struct net_device *net)
{
 struct net_device_context *net_device_ctx = netdev_priv(net);
 struct hv_device *device_obj = net_device_ctx->device_ctx;
 int ret;

 netif_tx_disable(net);


 cancel_work_sync(&net_device_ctx->work);
 ret = rndis_filter_close(device_obj);
 if (ret != 0)
  netdev_err(net, "unable to close device (ret %d).\n", ret);

 return ret;
}
