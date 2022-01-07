
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int head; } ;
struct TYPE_3__ {int head; } ;
struct sa1100_irda {TYPE_2__ rx_buff; TYPE_1__ tx_buff; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int Ser2HSCR0 ;
 int Ser2HSCR2 ;
 int Ser2UTCR0 ;
 int __PREG (int ) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 struct sa1100_irda* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sa1100_irda_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);

 if (dev) {
  struct sa1100_irda *si = netdev_priv(dev);
  unregister_netdev(dev);
  kfree(si->tx_buff.head);
  kfree(si->rx_buff.head);
  free_netdev(dev);
 }

 release_mem_region(__PREG(Ser2HSCR2), 0x04);
 release_mem_region(__PREG(Ser2HSCR0), 0x1c);
 release_mem_region(__PREG(Ser2UTCR0), 0x24);

 return 0;
}
