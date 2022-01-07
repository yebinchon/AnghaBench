
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct pvclock_wall_clock {int dummy; } ;
struct shared_info {struct pvclock_wall_clock wc; } ;
struct pvclock_vcpu_time_info {int dummy; } ;
struct TYPE_2__ {struct pvclock_vcpu_time_info time; } ;


 struct shared_info* HYPERVISOR_shared_info ;
 TYPE_1__* get_cpu_var (int ) ;
 int put_cpu_var (int ) ;
 int pvclock_read_wallclock (struct pvclock_wall_clock*,struct pvclock_vcpu_time_info*,struct timespec*) ;
 int xen_vcpu ;

__attribute__((used)) static void xen_read_wallclock(struct timespec *ts)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 struct pvclock_wall_clock *wall_clock = &(s->wc);
        struct pvclock_vcpu_time_info *vcpu_time;

 vcpu_time = &get_cpu_var(xen_vcpu)->time;
 pvclock_read_wallclock(wall_clock, vcpu_time, ts);
 put_cpu_var(xen_vcpu);
}
