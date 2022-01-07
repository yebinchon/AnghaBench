
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct port_info {int port_id; int mac; struct adapter* adapter; } ;
struct net_device {int dev_addr; int addr_len; } ;
struct adapter {int dummy; } ;


 int EADDRNOTAVAIL ;
 int LAN_MAC_IDX ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 scalar_t__ offload_running (struct adapter*) ;
 int t3_mac_set_address (int *,int ,int ) ;
 int write_smt_entry (struct adapter*,int ) ;

__attribute__((used)) static int cxgb_set_mac_addr(struct net_device *dev, void *p)
{
 struct port_info *pi = netdev_priv(dev);
 struct adapter *adapter = pi->adapter;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 t3_mac_set_address(&pi->mac, LAN_MAC_IDX, dev->dev_addr);
 if (offload_running(adapter))
  write_smt_entry(adapter, pi->port_id);
 return 0;
}
