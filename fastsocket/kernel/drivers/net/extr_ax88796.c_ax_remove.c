
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct net_device {int irq; } ;
struct ax_device {int mem2; scalar_t__ map2; int mem; } ;
struct TYPE_2__ {scalar_t__ mem; } ;


 TYPE_1__ ei_status ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int kfree (int ) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 struct ax_device* to_ax_dev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ax_remove(struct platform_device *_dev)
{
 struct net_device *dev = platform_get_drvdata(_dev);
 struct ax_device *ax;

 ax = to_ax_dev(dev);

 unregister_netdev(dev);
 free_irq(dev->irq, dev);

 iounmap(ei_status.mem);
 release_resource(ax->mem);
 kfree(ax->mem);

 if (ax->map2) {
  iounmap(ax->map2);
  release_resource(ax->mem2);
  kfree(ax->mem2);
 }

 free_netdev(dev);

 return 0;
}
