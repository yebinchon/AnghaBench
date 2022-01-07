
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct dscc4_dev_priv {scalar_t__ base_addr; } ;


 scalar_t__ SCC_REG_START (struct dscc4_dev_priv*) ;
 scalar_t__ STAR ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 scc_readl_star(struct dscc4_dev_priv *dpriv, struct net_device *dev)
{

 readl(dpriv->base_addr + SCC_REG_START(dpriv) + STAR);
 return readl(dpriv->base_addr + SCC_REG_START(dpriv) + STAR);
}
