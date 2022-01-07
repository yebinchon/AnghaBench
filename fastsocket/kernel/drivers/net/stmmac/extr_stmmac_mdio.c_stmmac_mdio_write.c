
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct stmmac_priv {TYPE_3__* mac_type; } ;
struct net_device {unsigned long base_addr; } ;
struct mii_bus {struct net_device* priv; } ;
struct TYPE_4__ {unsigned int addr; unsigned int data; } ;
struct TYPE_5__ {TYPE_1__ mii; } ;
struct TYPE_6__ {TYPE_2__ hw; } ;


 int MII_BUSY ;
 int MII_WRITE ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int readl (unsigned long) ;
 int writel (int,unsigned long) ;

__attribute__((used)) static int stmmac_mdio_write(struct mii_bus *bus, int phyaddr, int phyreg,
        u16 phydata)
{
 struct net_device *ndev = bus->priv;
 struct stmmac_priv *priv = netdev_priv(ndev);
 unsigned long ioaddr = ndev->base_addr;
 unsigned int mii_address = priv->mac_type->hw.mii.addr;
 unsigned int mii_data = priv->mac_type->hw.mii.data;

 u16 value =
     (((phyaddr << 11) & (0x0000F800)) | ((phyreg << 6) & (0x000007C0)))
     | MII_WRITE;

 value |= MII_BUSY;


 do {} while (((readl(ioaddr + mii_address)) & MII_BUSY) == 1);


 writel(phydata, ioaddr + mii_data);
 writel(value, ioaddr + mii_address);


 do {} while (((readl(ioaddr + mii_address)) & MII_BUSY) == 1);

 return 0;
}
