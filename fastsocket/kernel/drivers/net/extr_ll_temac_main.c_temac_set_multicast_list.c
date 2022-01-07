
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {int indirect_mutex; } ;
struct net_device {int flags; int mc_count; int dev; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int* dmi_addr; struct dev_mc_list* next; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MULTICAST_CAM_TABLE_NUM ;
 int XTE_AFM_EPPRM_MASK ;
 int XTE_AFM_OFFSET ;
 int XTE_MAW0_OFFSET ;
 int XTE_MAW1_OFFSET ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int temac_indirect_in32 (struct temac_local*,int ) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;

__attribute__((used)) static void temac_set_multicast_list(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 u32 multi_addr_msw, multi_addr_lsw, val;
 int i;

 mutex_lock(&lp->indirect_mutex);
 if (ndev->flags & (IFF_ALLMULTI | IFF_PROMISC)
   || ndev->mc_count > MULTICAST_CAM_TABLE_NUM) {






  ndev->flags |= IFF_PROMISC;
  temac_indirect_out32(lp, XTE_AFM_OFFSET, XTE_AFM_EPPRM_MASK);
  dev_info(&ndev->dev, "Promiscuous mode enabled.\n");
 } else if (ndev->mc_count) {
  struct dev_mc_list *mclist = ndev->mc_list;
  for (i = 0; mclist && i < ndev->mc_count; i++) {

   if (i >= MULTICAST_CAM_TABLE_NUM)
    break;
   multi_addr_msw = ((mclist->dmi_addr[3] << 24) |
       (mclist->dmi_addr[2] << 16) |
       (mclist->dmi_addr[1] << 8) |
       (mclist->dmi_addr[0]));
   temac_indirect_out32(lp, XTE_MAW0_OFFSET,
          multi_addr_msw);
   multi_addr_lsw = ((mclist->dmi_addr[5] << 8) |
       (mclist->dmi_addr[4]) | (i << 16));
   temac_indirect_out32(lp, XTE_MAW1_OFFSET,
          multi_addr_lsw);
   mclist = mclist->next;
  }
 } else {
  val = temac_indirect_in32(lp, XTE_AFM_OFFSET);
  temac_indirect_out32(lp, XTE_AFM_OFFSET,
         val & ~XTE_AFM_EPPRM_MASK);
  temac_indirect_out32(lp, XTE_MAW0_OFFSET, 0);
  temac_indirect_out32(lp, XTE_MAW1_OFFSET, 0);
  dev_info(&ndev->dev, "Promiscuous mode disabled.\n");
 }
 mutex_unlock(&lp->indirect_mutex);
}
