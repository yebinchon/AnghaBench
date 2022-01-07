
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;
struct net_device {int dummy; } ;


 struct niu* netdev_priv (struct net_device*) ;
 int niu_free_channels (struct niu*) ;
 int niu_free_irq (struct niu*) ;
 int niu_full_shutdown (struct niu*,struct net_device*) ;
 int niu_handle_led (struct niu*,int ) ;

__attribute__((used)) static int niu_close(struct net_device *dev)
{
 struct niu *np = netdev_priv(dev);

 niu_full_shutdown(np, dev);

 niu_free_irq(np);

 niu_free_channels(np);

 niu_handle_led(np, 0);

 return 0;
}
