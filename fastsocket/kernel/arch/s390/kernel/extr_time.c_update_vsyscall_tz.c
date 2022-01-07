
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tz_dsttime; int tz_minuteswest; } ;
struct TYPE_3__ {int tb_update_count; int tz_dsttime; int tz_minuteswest; } ;


 int smp_wmb () ;
 TYPE_2__ sys_tz ;
 TYPE_1__* vdso_data ;

void update_vsyscall_tz(void)
{

 ++vdso_data->tb_update_count;
 smp_wmb();
 vdso_data->tz_minuteswest = sys_tz.tz_minuteswest;
 vdso_data->tz_dsttime = sys_tz.tz_dsttime;
 smp_wmb();
 ++vdso_data->tb_update_count;
}
