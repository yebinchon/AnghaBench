
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct korina_private {int media_check_timer; } ;


 scalar_t__ HZ ;
 scalar_t__ jiffies ;
 int korina_check_media (struct net_device*,int ) ;
 int mod_timer (int *,scalar_t__) ;
 struct korina_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void korina_poll_media(unsigned long data)
{
 struct net_device *dev = (struct net_device *) data;
 struct korina_private *lp = netdev_priv(dev);

 korina_check_media(dev, 0);
 mod_timer(&lp->media_check_timer, jiffies + HZ);
}
