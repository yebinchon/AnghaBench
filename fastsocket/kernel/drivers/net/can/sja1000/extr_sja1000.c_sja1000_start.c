
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int ) ;int (* write_reg ) (struct sja1000_priv*,int ,int) ;TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 scalar_t__ CAN_STATE_STOPPED ;
 int REG_ECC ;
 int REG_RXERR ;
 int REG_TXERR ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int set_normal_mode (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;
 int stub1 (struct sja1000_priv*,int ,int) ;
 int stub2 (struct sja1000_priv*,int ,int) ;
 int stub3 (struct sja1000_priv*,int ) ;

__attribute__((used)) static void sja1000_start(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);


 if (priv->can.state != CAN_STATE_STOPPED)
  set_reset_mode(dev);


 priv->write_reg(priv, REG_TXERR, 0x0);
 priv->write_reg(priv, REG_RXERR, 0x0);
 priv->read_reg(priv, REG_ECC);


 set_normal_mode(dev);
}
