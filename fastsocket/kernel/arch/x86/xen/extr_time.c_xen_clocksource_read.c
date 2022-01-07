
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pvclock_vcpu_time_info {int dummy; } ;
typedef int cycle_t ;
struct TYPE_2__ {struct pvclock_vcpu_time_info time; } ;


 TYPE_1__* get_cpu_var (int ) ;
 int put_cpu_var (int ) ;
 int pvclock_clocksource_read (struct pvclock_vcpu_time_info*) ;
 int xen_vcpu ;

cycle_t xen_clocksource_read(void)
{
        struct pvclock_vcpu_time_info *src;
 cycle_t ret;

 src = &get_cpu_var(xen_vcpu)->time;
 ret = pvclock_clocksource_read(src);
 put_cpu_var(xen_vcpu);
 return ret;
}
