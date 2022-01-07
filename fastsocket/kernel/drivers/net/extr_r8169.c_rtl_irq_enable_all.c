
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int event_slow; } ;


 int RTL_EVENT_NAPI ;
 int rtl_irq_enable (struct rtl8169_private*,int) ;

__attribute__((used)) static void rtl_irq_enable_all(struct rtl8169_private *tp)
{
 rtl_irq_enable(tp, RTL_EVENT_NAPI | tp->event_slow);
}
