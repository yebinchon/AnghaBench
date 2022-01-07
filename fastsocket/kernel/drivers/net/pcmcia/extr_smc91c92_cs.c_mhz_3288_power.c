
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct smc_private {scalar_t__ base; } ;
struct TYPE_2__ {scalar_t__ ConfigBase; } ;
struct pcmcia_device {TYPE_1__ conf; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 scalar_t__ CISREG_COR ;
 scalar_t__ MEGAHERTZ_ISR ;
 int mdelay (int) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int readb (scalar_t__) ;
 int udelay (int) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int mhz_3288_power(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_private *smc = netdev_priv(dev);
    u_char tmp;


    readb(smc->base+MEGAHERTZ_ISR);
    udelay(5);
    readb(smc->base+MEGAHERTZ_ISR);


    mdelay(200);


    tmp = readb(smc->base + link->conf.ConfigBase + CISREG_COR);
    udelay(5);
    writeb(tmp, smc->base + link->conf.ConfigBase + CISREG_COR);

    return 0;
}
