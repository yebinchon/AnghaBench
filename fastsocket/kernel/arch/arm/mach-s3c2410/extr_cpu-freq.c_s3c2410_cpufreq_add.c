
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int s3c2410_cpufreq_info ;
 int s3c_cpufreq_register (int *) ;

__attribute__((used)) static int s3c2410_cpufreq_add(struct sys_device *sysdev)
{
 return s3c_cpufreq_register(&s3c2410_cpufreq_info);
}
