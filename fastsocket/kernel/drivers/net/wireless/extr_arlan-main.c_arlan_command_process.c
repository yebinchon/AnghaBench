
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct arlan_private {int card_polling_interval; scalar_t__ waiting_command_mask; } ;


 scalar_t__ arlan_command (struct net_device*,int ) ;
 struct arlan_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline void arlan_command_process(struct net_device *dev)
{
 struct arlan_private *priv = netdev_priv(dev);

 int times = 0;
 while (priv->waiting_command_mask && times < 8)
 {
  if (priv->waiting_command_mask)
  {
   if (arlan_command(dev, 0))
    break;
   times++;
  }
                                                ;
  if (priv->card_polling_interval > 1)
   break;
  times++;
 }
}
