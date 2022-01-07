
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_EINT_MASK ;
 int __raw_writel (int ,int ) ;
 int s3c_irqwake_eintmask ;

void s3c_pm_configure_extint(void)
{
 __raw_writel(s3c_irqwake_eintmask, S3C64XX_EINT_MASK);
}
