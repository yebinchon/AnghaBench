
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int dev_id; scalar_t__ ltda; scalar_t__ base_addr; } ;


 scalar_t__ CH0FTDA ;
 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int dscc4_tx_quiescent(struct dscc4_dev_priv *dpriv,
           struct net_device *dev)
{
 return readl(dpriv->base_addr + CH0FTDA + dpriv->dev_id*4) == dpriv->ltda;
}
