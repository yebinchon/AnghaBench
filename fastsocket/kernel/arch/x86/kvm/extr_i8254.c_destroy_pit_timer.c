
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ pit_timer; } ;
struct kvm_pit {int expired; TYPE_2__ pit_state; } ;


 int cancel_work_sync (int *) ;
 int hrtimer_cancel (int *) ;

__attribute__((used)) static void destroy_pit_timer(struct kvm_pit *pit)
{
 hrtimer_cancel(&pit->pit_state.pit_timer.timer);
 cancel_work_sync(&pit->expired);
}
