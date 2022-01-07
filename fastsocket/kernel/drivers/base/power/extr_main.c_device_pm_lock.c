
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dpm_list_mtx ;
 int mutex_lock (int *) ;

void device_pm_lock(void)
{
 mutex_lock(&dpm_list_mtx);
}
