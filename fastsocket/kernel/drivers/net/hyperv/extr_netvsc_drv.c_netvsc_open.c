
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;


 int netdev_err (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int rndis_filter_open (struct hv_device*) ;

__attribute__((used)) static int netvsc_open(struct net_device *net)
{
 struct net_device_context *net_device_ctx = netdev_priv(net);
 struct hv_device *device_obj = net_device_ctx->device_ctx;
 int ret = 0;


 ret = rndis_filter_open(device_obj);
 if (ret != 0) {
  netdev_err(net, "unable to open device (ret %d).\n", ret);
  return ret;
 }

 netif_start_queue(net);

 return ret;
}
