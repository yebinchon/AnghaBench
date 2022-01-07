
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct port_info {int xact_addr_filt; int viid; TYPE_1__* adapter; int link_cfg; int tx_chan; int * vlan_grp; } ;
struct net_device {int dev_addr; int mtu; } ;
struct TYPE_5__ {unsigned int fn; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int t4_change_mac (TYPE_1__*,unsigned int,int ,int,int ,int,int) ;
 int t4_enable_vi (TYPE_1__*,unsigned int,int ,int,int) ;
 int t4_link_start (TYPE_1__*,unsigned int,int ,int *) ;
 int t4_set_rxmode (TYPE_1__*,unsigned int,int ,int ,int,int,int,int ,int) ;

__attribute__((used)) static int link_start(struct net_device *dev)
{
 int ret;
 struct port_info *pi = netdev_priv(dev);
 unsigned int mb = pi->adapter->fn;





 ret = t4_set_rxmode(pi->adapter, mb, pi->viid, dev->mtu, -1, -1, -1,
       pi->vlan_grp != ((void*)0), 1);
 if (ret == 0) {
  ret = t4_change_mac(pi->adapter, mb, pi->viid,
        pi->xact_addr_filt, dev->dev_addr, 1,
        1);
  if (ret >= 0) {
   pi->xact_addr_filt = ret;
   ret = 0;
  }
 }
 if (ret == 0)
  ret = t4_link_start(pi->adapter, mb, pi->tx_chan,
        &pi->link_cfg);
 if (ret == 0)
  ret = t4_enable_vi(pi->adapter, mb, pi->viid, 1, 1);
 return ret;
}
