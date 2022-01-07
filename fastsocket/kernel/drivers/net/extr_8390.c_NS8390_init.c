
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __NS8390_init (struct net_device*,int) ;

void NS8390_init(struct net_device *dev, int startp)
{
 __NS8390_init(dev, startp);
}
