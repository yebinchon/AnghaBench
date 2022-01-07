
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct emac_rxch {int mac_addr; } ;
struct emac_priv {int mac_addr; TYPE_1__* ndev; struct emac_rxch** rxch; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 size_t EMAC_DEF_RX_CH ;
 int dev_notice (struct device*,char*,int ) ;
 int emac_setmac (struct emac_priv*,size_t,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_drv (struct emac_priv*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int emac_dev_setmac_addr(struct net_device *ndev, void *addr)
{
 struct emac_priv *priv = netdev_priv(ndev);
 struct emac_rxch *rxch = priv->rxch[EMAC_DEF_RX_CH];
 struct device *emac_dev = &priv->ndev->dev;
 struct sockaddr *sa = addr;

 if (!is_valid_ether_addr(sa->sa_data))
  return -EINVAL;


 memcpy(priv->mac_addr, sa->sa_data, ndev->addr_len);
 memcpy(ndev->dev_addr, sa->sa_data, ndev->addr_len);



 if (netif_running(ndev)) {
  memcpy(rxch->mac_addr, sa->sa_data, ndev->addr_len);
  emac_setmac(priv, EMAC_DEF_RX_CH, rxch->mac_addr);
 }

 if (netif_msg_drv(priv))
  dev_notice(emac_dev, "DaVinci EMAC: emac_dev_setmac_addr %pM\n",
     priv->mac_addr);

 return 0;
}
