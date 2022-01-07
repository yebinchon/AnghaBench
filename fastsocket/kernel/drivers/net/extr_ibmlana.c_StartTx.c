
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tda_t ;
struct net_device {scalar_t__ base_addr; } ;
struct TYPE_3__ {int tdastart; int currtxdescr; } ;
typedef TYPE_1__ ibmlana_priv ;


 int CMDREG_TXP ;
 scalar_t__ SONIC_CMDREG ;
 scalar_t__ SONIC_CTDA ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void StartTx(struct net_device *dev, int descr)
{
 ibmlana_priv *priv = netdev_priv(dev);
 int addr;

 addr = priv->tdastart + (descr * sizeof(tda_t));



 outw(addr, dev->base_addr + SONIC_CTDA);



 priv->currtxdescr = descr;
 outw(CMDREG_TXP, dev->base_addr + SONIC_CMDREG);
}
