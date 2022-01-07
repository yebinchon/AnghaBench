
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skge_port {int port; scalar_t__ flow_status; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct net_device {int mc_count; int flags; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addr; struct dev_mc_list* next; } ;
typedef int filter ;


 scalar_t__ FLOW_STAT_REM_SEND ;
 scalar_t__ FLOW_STAT_SYMMETRIC ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int XM_HSM ;
 int XM_MD_ENA_HASH ;
 int XM_MD_ENA_PROM ;
 int XM_MODE ;
 int genesis_add_filter (int *,int ) ;
 int memset (int *,int,int) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int pause_mc_addr ;
 int xm_outhash (struct skge_hw*,int,int ,int *) ;
 int xm_read32 (struct skge_hw*,int,int ) ;
 int xm_write32 (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void genesis_set_multicast(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 int i, count = dev->mc_count;
 struct dev_mc_list *list = dev->mc_list;
 u32 mode;
 u8 filter[8];

 mode = xm_read32(hw, port, XM_MODE);
 mode |= XM_MD_ENA_HASH;
 if (dev->flags & IFF_PROMISC)
  mode |= XM_MD_ENA_PROM;
 else
  mode &= ~XM_MD_ENA_PROM;

 if (dev->flags & IFF_ALLMULTI)
  memset(filter, 0xff, sizeof(filter));
 else {
  memset(filter, 0, sizeof(filter));

  if (skge->flow_status == FLOW_STAT_REM_SEND
      || skge->flow_status == FLOW_STAT_SYMMETRIC)
   genesis_add_filter(filter, pause_mc_addr);

  for (i = 0; list && i < count; i++, list = list->next)
   genesis_add_filter(filter, list->dmi_addr);
 }

 xm_write32(hw, port, XM_MODE, mode);
 xm_outhash(hw, port, XM_HSM, filter);
}
