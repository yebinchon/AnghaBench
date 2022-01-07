
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct s3c_cpufreq_config {TYPE_1__ pll; } ;


 int S3C2410_MPLLCON ;
 int __raw_writel (int ,int ) ;

void s3c2410_set_fvco(struct s3c_cpufreq_config *cfg)
{
 __raw_writel(cfg->pll.index, S3C2410_MPLLCON);
}
