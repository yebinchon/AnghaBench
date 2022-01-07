
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dscc4_dev_priv {int flags; int timer; } ;


 int CCR0 ;
 int CCR2 ;
 int FakeReset ;
 int IMR ;
 int PowerUp ;
 int Vis ;
 int del_timer_sync (int *) ;
 struct dscc4_dev_priv* dscc4_priv (struct net_device*) ;
 int hdlc_close (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int scc_patchl (int,int ,struct dscc4_dev_priv*,struct net_device*,int ) ;
 int scc_writel (int,struct dscc4_dev_priv*,struct net_device*,int ) ;

__attribute__((used)) static int dscc4_close(struct net_device *dev)
{
 struct dscc4_dev_priv *dpriv = dscc4_priv(dev);

 del_timer_sync(&dpriv->timer);
 netif_stop_queue(dev);

 scc_patchl(PowerUp | Vis, 0, dpriv, dev, CCR0);
 scc_patchl(0x00050000, 0, dpriv, dev, CCR2);
 scc_writel(0xffffffff, dpriv, dev, IMR);

 dpriv->flags |= FakeReset;

 hdlc_close(dev);

 return 0;
}
