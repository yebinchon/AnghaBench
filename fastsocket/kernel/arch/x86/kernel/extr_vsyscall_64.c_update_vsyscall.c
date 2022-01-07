
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct clocksource {int shift; int mask; int cycle_last; int vread; } ;
struct TYPE_3__ {int shift; int mult; int mask; int cycle_last; int vread; } ;
struct TYPE_4__ {int lock; int wall_time_coarse; struct timespec wall_to_monotonic; int wall_time_nsec; int wall_time_sec; TYPE_1__ clock; } ;


 int __current_kernel_time () ;
 TYPE_2__ vsyscall_gtod_data ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void update_vsyscall(struct timespec *wall_time, struct timespec *wtm,
   struct clocksource *clock, u32 mult)
{
 unsigned long flags;

 write_seqlock_irqsave(&vsyscall_gtod_data.lock, flags);

 vsyscall_gtod_data.clock.vread = clock->vread;
 vsyscall_gtod_data.clock.cycle_last = clock->cycle_last;
 vsyscall_gtod_data.clock.mask = clock->mask;
 vsyscall_gtod_data.clock.mult = mult;
 vsyscall_gtod_data.clock.shift = clock->shift;
 vsyscall_gtod_data.wall_time_sec = wall_time->tv_sec;
 vsyscall_gtod_data.wall_time_nsec = wall_time->tv_nsec;
 vsyscall_gtod_data.wall_to_monotonic = *wtm;
 vsyscall_gtod_data.wall_time_coarse = __current_kernel_time();
 write_sequnlock_irqrestore(&vsyscall_gtod_data.lock, flags);
}
