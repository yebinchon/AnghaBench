
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct sja1000_priv {unsigned char (* read_reg ) (struct sja1000_priv*,int ) ;int (* write_reg ) (struct sja1000_priv*,int ,unsigned char) ;TYPE_1__ can; } ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;


 int CAN_STATE_STOPPED ;
 unsigned char IRQ_OFF ;
 unsigned char MOD_RM ;
 int REG_IER ;
 int REG_MOD ;
 int dev_err (int ,char*) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 unsigned char stub1 (struct sja1000_priv*,int ) ;
 int stub2 (struct sja1000_priv*,int ,unsigned char) ;
 int stub3 (struct sja1000_priv*,int ,unsigned char) ;
 unsigned char stub4 (struct sja1000_priv*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void set_reset_mode(struct net_device *dev)
{
 struct sja1000_priv *priv = netdev_priv(dev);
 unsigned char status = priv->read_reg(priv, REG_MOD);
 int i;


 priv->write_reg(priv, REG_IER, IRQ_OFF);

 for (i = 0; i < 100; i++) {

  if (status & MOD_RM) {
   priv->can.state = CAN_STATE_STOPPED;
   return;
  }

  priv->write_reg(priv, REG_MOD, MOD_RM);
  udelay(10);
  status = priv->read_reg(priv, REG_MOD);
 }

 dev_err(dev->dev.parent, "setting SJA1000 into reset mode failed!\n");
}
