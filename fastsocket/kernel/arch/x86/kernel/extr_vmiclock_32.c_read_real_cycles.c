
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct clocksource {int dummy; } ;
typedef int cycle_t ;
struct TYPE_4__ {int cycle_last; } ;
struct TYPE_3__ {int (* get_cycle_counter ) (int ) ;} ;


 int VMI_CYCLES_REAL ;
 TYPE_2__ clocksource_vmi ;
 int max (int ,int ) ;
 int stub1 (int ) ;
 TYPE_1__ vmi_timer_ops ;

__attribute__((used)) static cycle_t read_real_cycles(struct clocksource *cs)
{
 cycle_t ret = (cycle_t)vmi_timer_ops.get_cycle_counter(VMI_CYCLES_REAL);
 return max(ret, clocksource_vmi.cycle_last);
}
