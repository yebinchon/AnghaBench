
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rtas_suspend_cpu (int *) ;
 int suspend_data ;
 scalar_t__ suspending ;

int pseries_suspend_cpu(void)
{
 if (suspending)
  return rtas_suspend_cpu(&suspend_data);
 return 0;
}
