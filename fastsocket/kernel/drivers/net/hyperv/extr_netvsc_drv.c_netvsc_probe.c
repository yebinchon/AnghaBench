
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device_info {int mac_adr; int ring_size; } ;
struct net_device_context {int work; int dwork; struct hv_device* device_ctx; } ;
struct net_device {int features; int dev_addr; int * netdev_ops; } ;
struct hv_vmbus_device_id {int dummy; } ;
struct hv_device {int device; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_SG ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int device_ops ;
 int do_set_multicast ;
 int ethtool_ops ;
 int free_netdev (struct net_device*) ;
 int hv_set_drvdata (struct hv_device*,struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netvsc_send_garp ;
 int pr_err (char*) ;
 int register_netdev (struct net_device*) ;
 int ring_size ;
 int rndis_filter_device_add (struct hv_device*,struct netvsc_device_info*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int netvsc_probe(struct hv_device *dev,
   const struct hv_vmbus_device_id *dev_id)
{
 struct net_device *net = ((void*)0);
 struct net_device_context *net_device_ctx;
 struct netvsc_device_info device_info;
 int ret;

 net = alloc_etherdev(sizeof(struct net_device_context));
 if (!net)
  return -ENOMEM;


 netif_carrier_off(net);

 net_device_ctx = netdev_priv(net);
 net_device_ctx->device_ctx = dev;
 hv_set_drvdata(dev, net);
 INIT_DELAYED_WORK(&net_device_ctx->dwork, netvsc_send_garp);
 INIT_WORK(&net_device_ctx->work, do_set_multicast);

 net->netdev_ops = &device_ops;



 net->features = NETIF_F_SG | NETIF_F_HW_VLAN_TX;

 SET_ETHTOOL_OPS(net, &ethtool_ops);
 SET_NETDEV_DEV(net, &dev->device);

 ret = register_netdev(net);
 if (ret != 0) {
  pr_err("Unable to register netdev.\n");
  free_netdev(net);
  goto out;
 }


 device_info.ring_size = ring_size;
 ret = rndis_filter_device_add(dev, &device_info);
 if (ret != 0) {
  netdev_err(net, "unable to add netvsc device (ret %d)\n", ret);
  unregister_netdev(net);
  free_netdev(net);
  hv_set_drvdata(dev, ((void*)0));
  return ret;
 }
 memcpy(net->dev_addr, device_info.mac_adr, ETH_ALEN);

 netif_carrier_on(net);

out:
 return ret;
}
