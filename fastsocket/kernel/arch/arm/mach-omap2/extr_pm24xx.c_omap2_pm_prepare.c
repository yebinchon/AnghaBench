
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_hlt () ;

__attribute__((used)) static int omap2_pm_prepare(void)
{

 disable_hlt();
 return 0;
}
