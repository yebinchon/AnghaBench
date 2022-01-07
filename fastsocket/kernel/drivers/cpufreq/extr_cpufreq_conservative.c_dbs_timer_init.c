
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_dbs_info_s {int enable; int work; int cpu; } ;
struct TYPE_2__ {int sampling_rate; } ;


 int INIT_DELAYED_WORK_DEFERRABLE (int *,int ) ;
 TYPE_1__ dbs_tuners_ins ;
 int do_dbs_timer ;
 int jiffies ;
 int kconservative_wq ;
 int queue_delayed_work_on (int ,int ,int *,int) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static inline void dbs_timer_init(struct cpu_dbs_info_s *dbs_info)
{

 int delay = usecs_to_jiffies(dbs_tuners_ins.sampling_rate);
 delay -= jiffies % delay;

 dbs_info->enable = 1;
 INIT_DELAYED_WORK_DEFERRABLE(&dbs_info->work, do_dbs_timer);
 queue_delayed_work_on(dbs_info->cpu, kconservative_wq, &dbs_info->work,
    delay);
}
