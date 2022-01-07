
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_cpufreq_config {TYPE_1__* info; } ;
struct TYPE_2__ {int (* calc_iotiming ) (struct s3c_cpufreq_config*,int *) ;} ;


 int s3c24xx_iotiming ;
 int stub1 (struct s3c_cpufreq_config*,int *) ;

__attribute__((used)) static int s3c_cpufreq_calcio(struct s3c_cpufreq_config *cfg)
{
 if (cfg->info->calc_iotiming)
  return (cfg->info->calc_iotiming)(cfg, &s3c24xx_iotiming);

 return 0;
}
