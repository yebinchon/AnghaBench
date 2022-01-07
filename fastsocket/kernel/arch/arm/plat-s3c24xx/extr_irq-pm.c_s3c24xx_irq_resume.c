
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ S3C24XX_EINFLT0 ;
 scalar_t__ S3C24XX_EINTMASK ;
 scalar_t__ S3C24XX_EXTINT0 ;
 int __raw_writel (int ,scalar_t__) ;
 int * irq_save ;
 int s3c_pm_do_restore (int *,unsigned int) ;
 int * save_eintflt ;
 int save_eintmask ;
 int * save_extint ;

int s3c24xx_irq_resume(struct sys_device *dev)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(save_extint); i++)
  __raw_writel(save_extint[i], S3C24XX_EXTINT0 + (i*4));

 for (i = 0; i < ARRAY_SIZE(save_eintflt); i++)
  __raw_writel(save_eintflt[i], S3C24XX_EINFLT0 + (i*4));

 s3c_pm_do_restore(irq_save, ARRAY_SIZE(irq_save));
 __raw_writel(save_eintmask, S3C24XX_EINTMASK);

 return 0;
}
