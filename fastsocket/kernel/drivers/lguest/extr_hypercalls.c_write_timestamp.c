
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct lg_cpu {TYPE_2__* lg; } ;
struct TYPE_4__ {TYPE_1__* lguest_data; } ;
struct TYPE_3__ {int time; } ;


 scalar_t__ copy_to_user (int *,struct timespec*,int) ;
 int kill_guest (struct lg_cpu*,char*) ;
 int ktime_get_real_ts (struct timespec*) ;

void write_timestamp(struct lg_cpu *cpu)
{
 struct timespec now;
 ktime_get_real_ts(&now);
 if (copy_to_user(&cpu->lg->lguest_data->time,
    &now, sizeof(struct timespec)))
  kill_guest(cpu, "Writing timestamp");
}
