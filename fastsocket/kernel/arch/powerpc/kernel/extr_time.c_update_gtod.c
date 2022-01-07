
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct TYPE_2__ {int tb_update_count; int stamp_sec_fraction; struct timespec stamp_xtime; int wtom_clock_nsec; int wtom_clock_sec; void* tb_to_xs; void* stamp_xsec; void* tb_orig_stamp; } ;


 int smp_wmb () ;
 TYPE_1__* vdso_data ;

__attribute__((used)) static inline void update_gtod(u64 new_tb_stamp, u64 new_stamp_xsec,
          u64 new_tb_to_xs, struct timespec *now,
          struct timespec *wall_time,
          u32 frac_sec)
{
 vdso_data->tb_orig_stamp = new_tb_stamp;
 vdso_data->stamp_xsec = new_stamp_xsec;
 vdso_data->tb_to_xs = new_tb_to_xs;
 vdso_data->wtom_clock_sec = now->tv_sec;
 vdso_data->wtom_clock_nsec = now->tv_nsec;
 vdso_data->stamp_xtime = *wall_time;
 vdso_data->stamp_sec_fraction = frac_sec;
 smp_wmb();
 ++(vdso_data->tb_update_count);
}
