
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int flags; } ;
struct rtl8169_private {int event_slow; int mac_version; int mmio_addr; TYPE_1__ wk; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int LinkChg ;
 int RTL_FLAG_TASK_RESET_PENDING ;

 int RxFIFOOver ;
 int SYSErr ;
 int __rtl8169_check_link_status (struct net_device*,struct rtl8169_private*,int ,int) ;
 int netif_stop_queue (struct net_device*) ;
 int rtl8169_pcierr_interrupt (struct net_device*) ;
 int rtl_ack_events (struct rtl8169_private*,int) ;
 int rtl_get_events (struct rtl8169_private*) ;
 int rtl_irq_enable_all (struct rtl8169_private*) ;
 int set_bit (int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rtl_slow_event_work(struct rtl8169_private *tp)
{
 struct net_device *dev = tp->dev;
 u16 status;

 status = rtl_get_events(tp) & tp->event_slow;
 rtl_ack_events(tp, status);

 if (unlikely(status & RxFIFOOver)) {
  switch (tp->mac_version) {

  case 128:
   netif_stop_queue(dev);

   set_bit(RTL_FLAG_TASK_RESET_PENDING, tp->wk.flags);
  default:
   break;
  }
 }

 if (unlikely(status & SYSErr))
  rtl8169_pcierr_interrupt(dev);

 if (status & LinkChg)
  __rtl8169_check_link_status(dev, tp, tp->mmio_addr, 1);

 rtl_irq_enable_all(tp);
}
