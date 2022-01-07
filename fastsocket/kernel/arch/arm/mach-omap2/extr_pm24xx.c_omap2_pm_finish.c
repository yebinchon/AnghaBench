
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_hlt () ;

__attribute__((used)) static void omap2_pm_finish(void)
{
 enable_hlt();
}
