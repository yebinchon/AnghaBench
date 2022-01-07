
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct at91_priv {TYPE_1__ can; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int AT91_IDR ;
 int AT91_IRQ_ALL ;
 int AT91_MR ;
 int AT91_MR_CANEN ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_transceiver_switch (struct at91_priv*,int ) ;
 int at91_write (struct at91_priv*,int ,int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void at91_chip_stop(struct net_device *dev, enum can_state state)
{
 struct at91_priv *priv = netdev_priv(dev);
 u32 reg_mr;


 at91_write(priv, AT91_IDR, AT91_IRQ_ALL);

 reg_mr = at91_read(priv, AT91_MR);
 at91_write(priv, AT91_MR, reg_mr & ~AT91_MR_CANEN);

 at91_transceiver_switch(priv, 0);
 priv->can.state = state;
}
