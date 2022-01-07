
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int is_gmac; } ;
struct net_device {scalar_t__ base_addr; } ;
struct ethtool_regs {int dummy; } ;


 scalar_t__ DMA_BUS_MODE ;
 scalar_t__ DMA_CUR_RX_BUF_ADDR ;
 scalar_t__ DMA_CUR_TX_BUF_ADDR ;
 int REG_SPACE_SIZE ;
 int memset (int *,int,int ) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

void stmmac_ethtool_gregs(struct net_device *dev,
     struct ethtool_regs *regs, void *space)
{
 int i;
 u32 *reg_space = (u32 *) space;

 struct stmmac_priv *priv = netdev_priv(dev);

 memset(reg_space, 0x0, REG_SPACE_SIZE);

 if (!priv->is_gmac) {

  for (i = 0; i < 12; i++)
   reg_space[i] = readl(dev->base_addr + (i * 4));

  for (i = 0; i < 9; i++)
   reg_space[i + 12] =
       readl(dev->base_addr + (DMA_BUS_MODE + (i * 4)));
  reg_space[22] = readl(dev->base_addr + DMA_CUR_TX_BUF_ADDR);
  reg_space[23] = readl(dev->base_addr + DMA_CUR_RX_BUF_ADDR);
 } else {

  for (i = 0; i < 55; i++)
   reg_space[i] = readl(dev->base_addr + (i * 4));

  for (i = 0; i < 22; i++)
   reg_space[i + 55] =
       readl(dev->base_addr + (DMA_BUS_MODE + (i * 4)));
 }

 return;
}
