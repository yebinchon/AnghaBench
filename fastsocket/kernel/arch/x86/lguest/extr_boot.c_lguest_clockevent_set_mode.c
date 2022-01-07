
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int BUG () ;





 int LHCALL_SET_CLOCKEVENT ;
 int kvm_hypercall0 (int ) ;

__attribute__((used)) static void lguest_clockevent_set_mode(enum clock_event_mode mode,
                                      struct clock_event_device *evt)
{
 switch (mode) {
 case 128:
 case 129:

  kvm_hypercall0(LHCALL_SET_CLOCKEVENT);
  break;
 case 132:

  break;
 case 131:
  BUG();
 case 130:
  break;
 }
}
