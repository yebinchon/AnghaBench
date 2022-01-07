
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;


 int NR_CPUS ;
 scalar_t__ PAGE_SIZE ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t print_cpus_kernel_max(struct sysdev_class *class, char *buf)
{
 int n = snprintf(buf, PAGE_SIZE-2, "%d\n", NR_CPUS - 1);
 return n;
}
