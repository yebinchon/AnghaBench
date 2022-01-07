
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lapb_unregister (struct net_device*) ;

__attribute__((used)) static void x25_close(struct net_device *dev)
{
 lapb_unregister(dev);
}
