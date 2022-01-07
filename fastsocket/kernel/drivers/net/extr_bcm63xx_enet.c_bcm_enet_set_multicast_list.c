
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {int dmi_addrlen; int* dmi_addr; struct dev_mc_list* next; } ;
struct bcm_enet_priv {int dummy; } ;


 int ENET_PMH_DATAVALID_MASK ;
 int ENET_PMH_REG (int) ;
 int ENET_PML_REG (int) ;
 int ENET_RXCFG_ALLMCAST_MASK ;
 int ENET_RXCFG_PROMISC_MASK ;
 int ENET_RXCFG_REG ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int enet_readl (struct bcm_enet_priv*,int ) ;
 int enet_writel (struct bcm_enet_priv*,int,int ) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void bcm_enet_set_multicast_list(struct net_device *dev)
{
 struct bcm_enet_priv *priv;
 struct dev_mc_list *mc_list;
 u32 val;
 int i;

 priv = netdev_priv(dev);

 val = enet_readl(priv, ENET_RXCFG_REG);

 if (dev->flags & IFF_PROMISC)
  val |= ENET_RXCFG_PROMISC_MASK;
 else
  val &= ~ENET_RXCFG_PROMISC_MASK;



 if ((dev->flags & IFF_ALLMULTI) || dev->mc_count > 3)
  val |= ENET_RXCFG_ALLMCAST_MASK;
 else
  val &= ~ENET_RXCFG_ALLMCAST_MASK;



 if (val & ENET_RXCFG_ALLMCAST_MASK) {
  enet_writel(priv, val, ENET_RXCFG_REG);
  return;
 }

 for (i = 0, mc_list = dev->mc_list;
      (mc_list != ((void*)0)) && (i < dev->mc_count) && (i < 3);
      i++, mc_list = mc_list->next) {
  u8 *dmi_addr;
  u32 tmp;


  if (mc_list->dmi_addrlen != 6)
   continue;


  dmi_addr = mc_list->dmi_addr;
  tmp = (dmi_addr[2] << 24) | (dmi_addr[3] << 16) |
   (dmi_addr[4] << 8) | dmi_addr[5];
  enet_writel(priv, tmp, ENET_PML_REG(i + 1));

  tmp = (dmi_addr[0] << 8 | dmi_addr[1]);
  tmp |= ENET_PMH_DATAVALID_MASK;
  enet_writel(priv, tmp, ENET_PMH_REG(i + 1));
 }

 for (; i < 3; i++) {
  enet_writel(priv, 0, ENET_PML_REG(i + 1));
  enet_writel(priv, 0, ENET_PMH_REG(i + 1));
 }

 enet_writel(priv, val, ENET_RXCFG_REG);
}
