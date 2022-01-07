
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct port_info {int xact_addr_filt; int viid; TYPE_1__* adapter; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {int fn; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int t4_change_mac (TYPE_1__*,int ,int ,int,int ,int,int) ;

__attribute__((used)) static int cxgb_set_mac_addr(struct net_device *dev, void *p)
{
 int ret;
 struct sockaddr *addr = p;
 struct port_info *pi = netdev_priv(dev);

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 ret = t4_change_mac(pi->adapter, pi->adapter->fn, pi->viid,
       pi->xact_addr_filt, addr->sa_data, 1, 1);
 if (ret < 0)
  return ret;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 pi->xact_addr_filt = ret;
 return 0;
}
