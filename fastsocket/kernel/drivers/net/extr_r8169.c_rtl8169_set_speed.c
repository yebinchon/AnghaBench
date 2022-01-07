
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl8169_private {int (* set_speed ) (struct net_device*,int ,int ,int ,int) ;int timer; } ;
struct net_device {int dummy; } ;


 int ADVERTISED_1000baseT_Full ;
 int AUTONEG_ENABLE ;
 scalar_t__ RTL8169_PHY_TIMEOUT ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int stub1 (struct net_device*,int ,int ,int ,int) ;

__attribute__((used)) static int rtl8169_set_speed(struct net_device *dev,
        u8 autoneg, u16 speed, u8 duplex, u32 advertising)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 int ret;

 ret = tp->set_speed(dev, autoneg, speed, duplex, advertising);
 if (ret < 0)
  goto out;

 if (netif_running(dev) && (autoneg == AUTONEG_ENABLE) &&
     (advertising & ADVERTISED_1000baseT_Full)) {
  mod_timer(&tp->timer, jiffies + RTL8169_PHY_TIMEOUT);
 }
out:
 return ret;
}
