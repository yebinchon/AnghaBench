
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int core_save ;
 int misc_save ;
 int s3c_pm_do_save (int ,int ) ;

void s3c_pm_save_core(void)
{
 s3c_pm_do_save(misc_save, ARRAY_SIZE(misc_save));
 s3c_pm_do_save(core_save, ARRAY_SIZE(core_save));
}
