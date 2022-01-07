
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_dbs_info_s {int work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static inline void dbs_timer_exit(struct cpu_dbs_info_s *dbs_info)
{
 cancel_delayed_work_sync(&dbs_info->work);
}
