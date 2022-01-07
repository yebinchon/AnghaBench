
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enc28j60_net {int lock; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ECON1 ;
 int ECON1_RXEN ;
 int ECON1_TXRTS ;
 int ECON2 ;
 int ECON2_PWRSV ;
 int ESTAT ;
 int ESTAT_CLKRDY ;
 int ESTAT_RXBUSY ;
 int dev_dbg (int *,char*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ netif_msg_drv (struct enc28j60_net*) ;
 int nolock_reg_bfclr (struct enc28j60_net*,int ,int ) ;
 int nolock_reg_bfset (struct enc28j60_net*,int ,int ) ;
 int poll_ready (struct enc28j60_net*,int ,int ,int ) ;

__attribute__((used)) static void enc28j60_lowpower(struct enc28j60_net *priv, bool is_low)
{
 if (netif_msg_drv(priv))
  dev_dbg(&priv->spi->dev, "%s power...\n",
    is_low ? "low" : "high");

 mutex_lock(&priv->lock);
 if (is_low) {
  nolock_reg_bfclr(priv, ECON1, ECON1_RXEN);
  poll_ready(priv, ESTAT, ESTAT_RXBUSY, 0);
  poll_ready(priv, ECON1, ECON1_TXRTS, 0);

  nolock_reg_bfset(priv, ECON2, ECON2_PWRSV);
 } else {
  nolock_reg_bfclr(priv, ECON2, ECON2_PWRSV);
  poll_ready(priv, ESTAT, ESTAT_CLKRDY, ESTAT_CLKRDY);

 }
 mutex_unlock(&priv->lock);
}
