
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int timer; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int advertising; int duplex; int autoneg; } ;


 int del_timer_sync (int *) ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl8169_set_speed (struct net_device*,int ,int ,int ,int ) ;
 int rtl_lock_work (struct rtl8169_private*) ;
 int rtl_unlock_work (struct rtl8169_private*) ;

__attribute__((used)) static int rtl8169_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct rtl8169_private *tp = netdev_priv(dev);
 int ret;

 del_timer_sync(&tp->timer);

 rtl_lock_work(tp);
 ret = rtl8169_set_speed(dev, cmd->autoneg, ethtool_cmd_speed(cmd),
    cmd->duplex, cmd->advertising);
 rtl_unlock_work(tp);

 return ret;
}
