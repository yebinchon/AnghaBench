
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int S3C2410_GPF (int) ;
 int S3C2410_GSTATUS2 ;
 unsigned long S3C2410_GSTATUS2_OFFRESET ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 scalar_t__ machine_is_aml_m5900 () ;
 int s3c2410_gpio_setpin (int ,int ) ;

__attribute__((used)) static int s3c2410_pm_resume(struct sys_device *dev)
{
 unsigned long tmp;



 tmp = __raw_readl(S3C2410_GSTATUS2);
 tmp &= S3C2410_GSTATUS2_OFFRESET;
 __raw_writel(tmp, S3C2410_GSTATUS2);

 if ( machine_is_aml_m5900() )
  s3c2410_gpio_setpin(S3C2410_GPF(2), 0);

 return 0;
}
