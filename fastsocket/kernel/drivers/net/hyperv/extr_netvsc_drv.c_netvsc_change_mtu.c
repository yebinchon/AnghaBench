
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netvsc_device_info {int ring_size; } ;
struct netvsc_device {scalar_t__ nvsp_version; int start_remove; scalar_t__ destroy; } ;
struct net_device_context {struct hv_device* device_ctx; int work; int dwork; } ;
struct net_device {int mtu; } ;
struct hv_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ETH_DATA_LEN ;
 int NETVSC_MTU ;
 scalar_t__ NVSP_PROTOCOL_VERSION_2 ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 struct netvsc_device* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,struct net_device*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int ring_size ;
 int rndis_filter_device_add (struct hv_device*,struct netvsc_device_info*) ;
 int rndis_filter_device_remove (struct hv_device*) ;

__attribute__((used)) static int netvsc_change_mtu(struct net_device *ndev, int mtu)
{
 struct net_device_context *ndevctx = netdev_priv(ndev);
 struct hv_device *hdev = ndevctx->device_ctx;
 struct netvsc_device *nvdev = hv_get_drvdata(hdev);
 struct netvsc_device_info device_info;
 int limit = ETH_DATA_LEN;

 if (nvdev == ((void*)0) || nvdev->destroy)
  return -ENODEV;

 if (nvdev->nvsp_version == NVSP_PROTOCOL_VERSION_2)
  limit = NETVSC_MTU;

 if (mtu < 68 || mtu > limit)
  return -EINVAL;

 nvdev->start_remove = 1;
 cancel_delayed_work_sync(&ndevctx->dwork);
 cancel_work_sync(&ndevctx->work);
 netif_tx_disable(ndev);
 rndis_filter_device_remove(hdev);

 ndev->mtu = mtu;

 ndevctx->device_ctx = hdev;
 hv_set_drvdata(hdev, ndev);
 device_info.ring_size = ring_size;
 rndis_filter_device_add(hdev, &device_info);
 netif_wake_queue(ndev);

 return 0;
}
