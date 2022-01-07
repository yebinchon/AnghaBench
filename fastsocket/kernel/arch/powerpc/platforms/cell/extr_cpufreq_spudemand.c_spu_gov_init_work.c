
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_gov_info_struct {int work; TYPE_1__* policy; int poll_int; } ;
struct TYPE_2__ {int cpu; } ;


 int INIT_DELAYED_WORK_DEFERRABLE (int *,int ) ;
 int kspugov_wq ;
 int queue_delayed_work_on (int ,int ,int *,int) ;
 int spu_gov_work ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static void spu_gov_init_work(struct spu_gov_info_struct *info)
{
 int delay = usecs_to_jiffies(info->poll_int);
 INIT_DELAYED_WORK_DEFERRABLE(&info->work, spu_gov_work);
 queue_delayed_work_on(info->policy->cpu, kspugov_wq, &info->work, delay);
}
