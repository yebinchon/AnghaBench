
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 int cpulist_scnprintf (char*,scalar_t__,struct cpumask const*) ;

__attribute__((used)) static ssize_t print_cpus_map(char *buf, const struct cpumask *map)
{
 int n = cpulist_scnprintf(buf, PAGE_SIZE-2, map);

 buf[n++] = '\n';
 buf[n] = '\0';
 return n;
}
