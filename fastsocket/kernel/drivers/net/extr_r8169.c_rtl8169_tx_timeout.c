
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct net_device {int dummy; } ;


 int RTL_FLAG_TASK_RESET_PENDING ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_schedule_task (struct rtl8169_private*,int ) ;

__attribute__((used)) static void rtl8169_tx_timeout(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl_schedule_task(tp, RTL_FLAG_TASK_RESET_PENDING);
}
