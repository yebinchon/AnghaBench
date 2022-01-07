
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int event_slow; int napi; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_RETVAL (int) ;
 int RTL_EVENT_NAPI ;
 int napi_schedule (int *) ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl_get_events (struct rtl8169_private*) ;
 int rtl_irq_disable (struct rtl8169_private*) ;

__attribute__((used)) static irqreturn_t rtl8169_interrupt(int irq, void *dev_instance)
{
 struct net_device *dev = dev_instance;
 struct rtl8169_private *tp = netdev_priv(dev);
 int handled = 0;
 u16 status;

 status = rtl_get_events(tp);
 if (status && status != 0xffff) {
  status &= RTL_EVENT_NAPI | tp->event_slow;
  if (status) {
   handled = 1;

   rtl_irq_disable(tp);
   napi_schedule(&tp->napi);
  }
 }
 return IRQ_RETVAL(handled);
}
