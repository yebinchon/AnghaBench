
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hwblk_work ;
 int pm_wq ;
 int queue_work (int ,int *) ;

void platform_pm_runtime_suspend_idle(void)
{
 queue_work(pm_wq, &hwblk_work);
}
