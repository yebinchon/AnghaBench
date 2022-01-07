
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C2412_PWRCFG ;
 unsigned long S3C2412_PWRCFG_STANDBYWFI_SLEEP ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 int flush_cache_all () ;
 int s3c2412_sleep_enter () ;

__attribute__((used)) static void s3c2412_cpu_suspend(void)
{
 unsigned long tmp;

 flush_cache_all();



 tmp = __raw_readl(S3C2412_PWRCFG);
 tmp |= S3C2412_PWRCFG_STANDBYWFI_SLEEP;
 __raw_writel(tmp, S3C2412_PWRCFG);

 s3c2412_sleep_enter();
}
