
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int DEFAULT_TIMER_EXPIRE ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ spu_prof_running ;
 int spu_work ;
 int sync_spu_buff () ;

__attribute__((used)) static void wq_sync_spu_buff(struct work_struct *work)
{

 sync_spu_buff();


 if (spu_prof_running)
  schedule_delayed_work(&spu_work, DEFAULT_TIMER_EXPIRE);
}
