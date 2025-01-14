
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct net_device {int dummy; } ;
struct ibmveth_adapter {int pool_config; void* fw_ipv6_csum_support; TYPE_1__* vdev; void* fw_ipv4_csum_support; } ;
struct TYPE_2__ {int unit_address; } ;


 int EIO ;
 long H_SUCCESS ;
 unsigned long IBMVETH_ILLAN_ACTIVE_TRUNK ;
 unsigned long IBMVETH_ILLAN_IPV4_TCP_CSUM ;
 unsigned long IBMVETH_ILLAN_IPV6_TCP_CSUM ;
 unsigned long IBMVETH_ILLAN_PADDED_PKT_CSUM ;
 unsigned long IBMVETH_ILLAN_TRUNK_PRI_MASK ;
 long h_illan_attributes (int ,unsigned long,unsigned long,unsigned long*) ;
 int ibmveth_close (struct net_device*) ;
 int ibmveth_open (struct net_device*) ;
 int netdev_err (struct net_device*,char*,void*,long,...) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ibmveth_set_csum_offload(struct net_device *dev, u32 data,
        void (*done) (struct net_device *, u32))
{
 struct ibmveth_adapter *adapter = netdev_priv(dev);
 unsigned long set_attr, clr_attr, ret_attr;
 unsigned long set_attr6, clr_attr6;
 long ret, ret6;
 int rc1 = 0, rc2 = 0;
 int restart = 0;

 if (netif_running(dev)) {
  restart = 1;
  adapter->pool_config = 1;
  ibmveth_close(dev);
  adapter->pool_config = 0;
 }

 set_attr = 0;
 clr_attr = 0;

 if (data) {
  set_attr = IBMVETH_ILLAN_IPV4_TCP_CSUM;
  set_attr6 = IBMVETH_ILLAN_IPV6_TCP_CSUM;
 } else {
  clr_attr = IBMVETH_ILLAN_IPV4_TCP_CSUM;
  clr_attr6 = IBMVETH_ILLAN_IPV6_TCP_CSUM;
 }

 ret = h_illan_attributes(adapter->vdev->unit_address, 0, 0, &ret_attr);

 if (ret == H_SUCCESS && !(ret_attr & IBMVETH_ILLAN_ACTIVE_TRUNK) &&
     !(ret_attr & IBMVETH_ILLAN_TRUNK_PRI_MASK) &&
     (ret_attr & IBMVETH_ILLAN_PADDED_PKT_CSUM)) {
  ret = h_illan_attributes(adapter->vdev->unit_address, clr_attr,
      set_attr, &ret_attr);

  if (ret != H_SUCCESS) {
   netdev_err(dev, "unable to change IPv4 checksum "
     "offload settings. %d rc=%ld\n",
     data, ret);

   ret = h_illan_attributes(adapter->vdev->unit_address,
       set_attr, clr_attr, &ret_attr);
  } else {
   adapter->fw_ipv4_csum_support = data;
  }

  ret6 = h_illan_attributes(adapter->vdev->unit_address,
      clr_attr6, set_attr6, &ret_attr);

  if (ret6 != H_SUCCESS) {
   netdev_err(dev, "unable to change IPv6 checksum "
     "offload settings. %d rc=%ld\n",
     data, ret);

   ret = h_illan_attributes(adapter->vdev->unit_address,
       set_attr6, clr_attr6,
       &ret_attr);
  } else
   adapter->fw_ipv6_csum_support = data;

  if (ret == H_SUCCESS || ret6 == H_SUCCESS)
   done(dev, data);
  else
   rc1 = -EIO;
 } else {
  rc1 = -EIO;
  netdev_err(dev, "unable to change checksum offload settings."
         " %d rc=%ld ret_attr=%lx\n", data, ret,
         ret_attr);
 }

 if (restart)
  rc2 = ibmveth_open(dev);

 return rc1 ? rc1 : rc2;
}
