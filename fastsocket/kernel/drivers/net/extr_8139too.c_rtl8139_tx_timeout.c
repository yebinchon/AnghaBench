
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8139_private {int watchdog_fired; int thread; int have_thread; } ;
struct net_device {int dummy; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 struct rtl8139_private* netdev_priv (struct net_device*) ;
 int next_tick ;
 int rtl8139_thread ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void rtl8139_tx_timeout (struct net_device *dev)
{
 struct rtl8139_private *tp = netdev_priv(dev);

 tp->watchdog_fired = 1;
 if (!tp->have_thread) {
  INIT_DELAYED_WORK(&tp->thread, rtl8139_thread);
  schedule_delayed_work(&tp->thread, next_tick);
 }
}
