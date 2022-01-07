
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pm_idle ;
 int * saved_idle ;

__attribute__((used)) static int omap_pm_prepare(void)
{

 saved_idle = pm_idle;
 pm_idle = ((void*)0);

 return 0;
}
