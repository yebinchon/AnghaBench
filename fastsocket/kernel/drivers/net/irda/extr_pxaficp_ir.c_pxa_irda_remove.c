
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int head; } ;
struct TYPE_5__ {int head; } ;
struct pxa_irda {int sir_clk; int fir_clk; TYPE_3__ rx_buff; TYPE_2__ tx_buff; int dev; TYPE_1__* pdata; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int (* shutdown ) (int ) ;int gpio_pwdown; } ;


 int FICP ;
 int STUART ;
 int __PREG (int ) ;
 int clk_put (int ) ;
 int free_netdev (struct net_device*) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (int ) ;
 struct pxa_irda* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int) ;
 int stub1 (int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int pxa_irda_remove(struct platform_device *_dev)
{
 struct net_device *dev = platform_get_drvdata(_dev);

 if (dev) {
  struct pxa_irda *si = netdev_priv(dev);
  unregister_netdev(dev);
  if (gpio_is_valid(si->pdata->gpio_pwdown))
   gpio_free(si->pdata->gpio_pwdown);
  if (si->pdata->shutdown)
   si->pdata->shutdown(si->dev);
  kfree(si->tx_buff.head);
  kfree(si->rx_buff.head);
  clk_put(si->fir_clk);
  clk_put(si->sir_clk);
  free_netdev(dev);
 }

 release_mem_region(__PREG(STUART), 0x24);
 release_mem_region(__PREG(FICP), 0x1c);

 return 0;
}
