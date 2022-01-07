
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; int addr_assign_type; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int EINVAL ;
 scalar_t__ IS_MF_FCOE_AFEX (struct bnx2x*) ;
 scalar_t__ IS_MF_STORAGE_SD (struct bnx2x*) ;
 int NET_ADDR_RANDOM ;
 int bnx2x_is_valid_ether_addr (struct bnx2x*,int ) ;
 int bnx2x_set_eth_mac (struct bnx2x*,int) ;
 int is_zero_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

int bnx2x_change_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct bnx2x *bp = netdev_priv(dev);
 int rc = 0;

 if (!bnx2x_is_valid_ether_addr(bp, addr->sa_data)) {
  BNX2X_ERR("Requested MAC address is not valid\n");
  return -EINVAL;
 }

 if ((IS_MF_STORAGE_SD(bp) || IS_MF_FCOE_AFEX(bp)) &&
     !is_zero_ether_addr(addr->sa_data)) {
  BNX2X_ERR("Can't configure non-zero address on iSCSI or FCoE functions in MF-SD mode\n");
  return -EINVAL;
 }

 if (netif_running(dev)) {
  rc = bnx2x_set_eth_mac(bp, 0);
  if (rc)
   return rc;
 }

 dev->addr_assign_type &= ~NET_ADDR_RANDOM;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 if (netif_running(dev))
  rc = bnx2x_set_eth_mac(bp, 1);

 return rc;
}
