
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {unsigned char state; struct timer_list timer; } ;
struct TYPE_4__ {TYPE_1__ scir; } ;


 unsigned char SCIR_CPU_ACTIVITY ;
 scalar_t__ SCIR_CPU_HB_INTERVAL ;
 unsigned char SCIR_CPU_HEARTBEAT ;
 scalar_t__ idle_cpu (int ) ;
 scalar_t__ jiffies ;
 int mod_timer_pinned (struct timer_list*,scalar_t__) ;
 int raw_smp_processor_id () ;
 TYPE_2__* uv_hub_info ;
 int uv_set_scir_bits (unsigned char) ;

__attribute__((used)) static void uv_heartbeat(unsigned long ignored)
{
 struct timer_list *timer = &uv_hub_info->scir.timer;
 unsigned char bits = uv_hub_info->scir.state;


 bits ^= SCIR_CPU_HEARTBEAT;


 if (idle_cpu(raw_smp_processor_id()))
  bits &= ~SCIR_CPU_ACTIVITY;
 else
  bits |= SCIR_CPU_ACTIVITY;


 uv_set_scir_bits(bits);


 mod_timer_pinned(timer, jiffies + SCIR_CPU_HB_INTERVAL);
}
