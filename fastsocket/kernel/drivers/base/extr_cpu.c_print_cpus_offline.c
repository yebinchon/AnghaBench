
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_class {int dummy; } ;
typedef int ssize_t ;
typedef int cpumask_var_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int alloc_cpumask_var (int *,int ) ;
 int cpu_online_mask ;
 int cpulist_scnprintf (char*,int,int ) ;
 int cpumask_complement (int ,int ) ;
 int free_cpumask_var (int ) ;
 int nr_cpu_ids ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 int total_cpus ;

__attribute__((used)) static ssize_t print_cpus_offline(struct sysdev_class *class, char *buf)
{
 int n = 0, len = PAGE_SIZE-2;
 cpumask_var_t offline;


 if (!alloc_cpumask_var(&offline, GFP_KERNEL))
  return -ENOMEM;
 cpumask_complement(offline, cpu_online_mask);
 n = cpulist_scnprintf(buf, len, offline);
 free_cpumask_var(offline);


 if (total_cpus && nr_cpu_ids < total_cpus) {
  if (n && n < len)
   buf[n++] = ',';

  if (nr_cpu_ids == total_cpus-1)
   n += snprintf(&buf[n], len - n, "%d", nr_cpu_ids);
  else
   n += snprintf(&buf[n], len - n, "%d-%d",
            nr_cpu_ids, total_cpus-1);
 }

 n += snprintf(&buf[n], len - n, "\n");
 return n;
}
