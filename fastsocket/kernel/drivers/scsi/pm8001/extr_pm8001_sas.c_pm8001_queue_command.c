
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int dummy; } ;
typedef int gfp_t ;


 int pm8001_task_exec (struct sas_task*,int const,int ,int ,int *) ;

int pm8001_queue_command(struct sas_task *task, const int num,
  gfp_t gfp_flags)
{
 return pm8001_task_exec(task, num, gfp_flags, 0, ((void*)0));
}
