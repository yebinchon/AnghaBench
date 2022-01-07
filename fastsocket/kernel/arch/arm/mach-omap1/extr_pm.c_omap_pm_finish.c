
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pm_idle ;
 int saved_idle ;

__attribute__((used)) static void omap_pm_finish(void)
{
 pm_idle = saved_idle;
}
