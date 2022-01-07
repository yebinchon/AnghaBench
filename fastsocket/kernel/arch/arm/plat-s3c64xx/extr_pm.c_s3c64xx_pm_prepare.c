
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_INFORM0 ;
 int S3C64XX_WAKEUP_STAT ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int s3c_cpu_resume ;
 int virt_to_phys (int ) ;

__attribute__((used)) static void s3c64xx_pm_prepare(void)
{

 __raw_writel(virt_to_phys(s3c_cpu_resume), S3C64XX_INFORM0);


 __raw_writel(__raw_readl(S3C64XX_WAKEUP_STAT), S3C64XX_WAKEUP_STAT);
}
