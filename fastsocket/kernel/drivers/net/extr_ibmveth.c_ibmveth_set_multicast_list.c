
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct ibmveth_adapter {scalar_t__ mcastFilterSize; TYPE_1__* vdev; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
struct TYPE_2__ {int unit_address; } ;


 unsigned long H_SUCCESS ;
 int IFF_PROMISC ;
 int IbmVethMcastAddFilter ;
 int IbmVethMcastClearFilterTable ;
 int IbmVethMcastDisableFiltering ;
 int IbmVethMcastEnableFiltering ;
 int IbmVethMcastEnableRecv ;
 unsigned long h_multicast_ctrl (int ,int,unsigned long) ;
 int memcpy (char*,int ,int) ;
 int netdev_err (struct net_device*,char*,unsigned long) ;
 struct ibmveth_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ibmveth_set_multicast_list(struct net_device *netdev)
{
 struct ibmveth_adapter *adapter = netdev_priv(netdev);
 unsigned long lpar_rc;

 if((netdev->flags & IFF_PROMISC) || (netdev->mc_count > adapter->mcastFilterSize)) {
  lpar_rc = h_multicast_ctrl(adapter->vdev->unit_address,
        IbmVethMcastEnableRecv |
        IbmVethMcastDisableFiltering,
        0);
  if (lpar_rc != H_SUCCESS) {
   netdev_err(netdev, "h_multicast_ctrl rc=%ld when "
       "entering promisc mode\n", lpar_rc);
  }
 } else {
  struct dev_mc_list *mclist = netdev->mc_list;
  int i;

  lpar_rc = h_multicast_ctrl(adapter->vdev->unit_address,
        IbmVethMcastEnableRecv |
        IbmVethMcastDisableFiltering |
        IbmVethMcastClearFilterTable,
        0);
  if (lpar_rc != H_SUCCESS) {
   netdev_err(netdev, "h_multicast_ctrl rc=%ld when "
       "attempting to clear filter table\n",
       lpar_rc);
  }

  for(i = 0; i < netdev->mc_count; ++i, mclist = mclist->next) {

   unsigned long mcast_addr = 0;
   memcpy(((char *)&mcast_addr)+2, mclist->dmi_addr, 6);
   lpar_rc = h_multicast_ctrl(adapter->vdev->unit_address,
         IbmVethMcastAddFilter,
         mcast_addr);
   if (lpar_rc != H_SUCCESS) {
    netdev_err(netdev, "h_multicast_ctrl rc=%ld "
        "when adding an entry to the filter "
        "table\n", lpar_rc);
   }
  }


  lpar_rc = h_multicast_ctrl(adapter->vdev->unit_address,
        IbmVethMcastEnableFiltering,
        0);
  if (lpar_rc != H_SUCCESS) {
   netdev_err(netdev, "h_multicast_ctrl rc=%ld when "
       "enabling filtering\n", lpar_rc);
  }
 }
}
