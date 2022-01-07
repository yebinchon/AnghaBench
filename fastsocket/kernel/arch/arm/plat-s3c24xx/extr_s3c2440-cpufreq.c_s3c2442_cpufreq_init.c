
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c2442_cpufreq_driver ;
 int s3c2442_sysclass ;
 int sysdev_driver_register (int *,int *) ;

__attribute__((used)) static int s3c2442_cpufreq_init(void)
{
 return sysdev_driver_register(&s3c2442_sysclass,
          &s3c2442_cpufreq_driver);
}
