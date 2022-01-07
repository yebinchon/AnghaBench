
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int led_lock; } ;
struct net_device {int dummy; } ;


 scalar_t__ NET_FLASH_PAUSE ;
 int NO_NETWORK_ACTIVITY ;
 int e100_set_network_leds (int ) ;
 scalar_t__ jiffies ;
 scalar_t__ led_active ;
 scalar_t__ led_next_time ;
 struct net_local* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
e100_clear_network_leds(unsigned long dummy)
{
 struct net_device *dev = (struct net_device *)dummy;
 struct net_local *np = netdev_priv(dev);

 spin_lock(&np->led_lock);

 if (led_active && time_after(jiffies, led_next_time)) {
  e100_set_network_leds(NO_NETWORK_ACTIVITY);


  led_next_time = jiffies + NET_FLASH_PAUSE;
  led_active = 0;
 }

 spin_unlock(&np->led_lock);
}
