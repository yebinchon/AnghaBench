
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int sys_tz; } ;


 int sys_tz ;
 TYPE_1__ vsyscall_gtod_data ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void update_vsyscall_tz(void)
{
 unsigned long flags;

 write_seqlock_irqsave(&vsyscall_gtod_data.lock, flags);

 vsyscall_gtod_data.sys_tz = sys_tz;
 write_sequnlock_irqrestore(&vsyscall_gtod_data.lock, flags);
}
