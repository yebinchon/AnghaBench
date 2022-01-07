
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int S3C64XX_EINT_MASK ;
 int __raw_writel (int ,int ) ;
 int core_save ;
 int misc_save ;
 int s3c_pm_debug_smdkled (int,int ) ;
 int s3c_pm_do_restore (int ,int ) ;
 int s3c_pm_do_restore_core (int ,int ) ;

void s3c_pm_restore_core(void)
{
 __raw_writel(0, S3C64XX_EINT_MASK);

 s3c_pm_debug_smdkled(1 << 2, 0);

 s3c_pm_do_restore_core(core_save, ARRAY_SIZE(core_save));
 s3c_pm_do_restore(misc_save, ARRAY_SIZE(misc_save));
}
