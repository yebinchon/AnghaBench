
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_irda {int dummy; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
typedef int pm_message_t ;


 struct pxa_irda* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int pxa_irda_shutdown (struct pxa_irda*) ;

__attribute__((used)) static int pxa_irda_suspend(struct platform_device *_dev, pm_message_t state)
{
 struct net_device *dev = platform_get_drvdata(_dev);
 struct pxa_irda *si;

 if (dev && netif_running(dev)) {
  si = netdev_priv(dev);
  netif_device_detach(dev);
  pxa_irda_shutdown(si);
 }

 return 0;
}
