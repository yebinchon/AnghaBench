
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int name; int addr_len; } ;
struct ks8695_priv {int dev; } ;


 int EADDRNOTAVAIL ;
 int dev_dbg (int ,char*,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int ks8695_update_mac (struct ks8695_priv*) ;
 int memcpy (int ,int ,int ) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
ks8695_set_mac(struct net_device *ndev, void *addr)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 struct sockaddr *address = addr;

 if (!is_valid_ether_addr(address->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(ndev->dev_addr, address->sa_data, ndev->addr_len);

 ks8695_update_mac(ksp);

 dev_dbg(ksp->dev, "%s: Updated MAC address to %pM\n",
  ndev->name, ndev->dev_addr);

 return 0;
}
