
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int indirect_mutex; } ;
struct net_device {int* dev_addr; } ;


 int ETH_ALEN ;
 int XTE_UAW0_OFFSET ;
 int XTE_UAW1_OFFSET ;
 int is_valid_ether_addr (int*) ;
 int memcpy (int*,void*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int random_ether_addr (int*) ;
 int temac_indirect_out32 (struct temac_local*,int ,int) ;

__attribute__((used)) static int temac_set_mac_address(struct net_device *ndev, void *address)
{
 struct temac_local *lp = netdev_priv(ndev);

 if (address)
  memcpy(ndev->dev_addr, address, ETH_ALEN);

 if (!is_valid_ether_addr(ndev->dev_addr))
  random_ether_addr(ndev->dev_addr);


 mutex_lock(&lp->indirect_mutex);
 temac_indirect_out32(lp, XTE_UAW0_OFFSET,
        (ndev->dev_addr[0]) |
        (ndev->dev_addr[1] << 8) |
        (ndev->dev_addr[2] << 16) |
        (ndev->dev_addr[3] << 24));


 temac_indirect_out32(lp, XTE_UAW1_OFFSET,
        (ndev->dev_addr[4] & 0x000000ff) |
        (ndev->dev_addr[5] << 8));
 mutex_unlock(&lp->indirect_mutex);

 return 0;
}
