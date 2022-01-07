
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sclp_cpu_info {int combined; int configured; TYPE_1__* cpu; scalar_t__ has_cpu_type; } ;
typedef int cpumask_t ;
struct TYPE_2__ {scalar_t__ type; int address; } ;


 int CPU_STATE_CONFIGURED ;
 int CPU_STATE_STANDBY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int POLARIZATION_UNKNWN ;
 int* __cpu_logical_map ;
 scalar_t__ cpu_known (int) ;
 int cpu_present_map ;
 int cpu_set (int,int ) ;
 int cpumask_first (int *) ;
 int cpumask_next (int,int *) ;
 int kfree (struct sclp_cpu_info*) ;
 struct sclp_cpu_info* kmalloc (int,int ) ;
 int nr_cpu_ids ;
 int sclp_get_cpu_info (struct sclp_cpu_info*) ;
 int * smp_cpu_polarization ;
 int * smp_cpu_state ;
 scalar_t__ smp_cpu_type ;

__attribute__((used)) static int smp_rescan_cpus_sclp(cpumask_t avail)
{
 struct sclp_cpu_info *info;
 int cpu_id, logical_cpu, cpu;
 int rc;

 logical_cpu = cpumask_first(&avail);
 if (logical_cpu >= nr_cpu_ids)
  return 0;
 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 rc = sclp_get_cpu_info(info);
 if (rc)
  goto out;
 for (cpu = 0; cpu < info->combined; cpu++) {
  if (info->has_cpu_type && info->cpu[cpu].type != smp_cpu_type)
   continue;
  cpu_id = info->cpu[cpu].address;
  if (cpu_known(cpu_id))
   continue;
  __cpu_logical_map[logical_cpu] = cpu_id;
  smp_cpu_polarization[logical_cpu] = POLARIZATION_UNKNWN;
  cpu_set(logical_cpu, cpu_present_map);
  if (cpu >= info->configured)
   smp_cpu_state[logical_cpu] = CPU_STATE_STANDBY;
  else
   smp_cpu_state[logical_cpu] = CPU_STATE_CONFIGURED;
  logical_cpu = cpumask_next(logical_cpu, &avail);
  if (logical_cpu >= nr_cpu_ids)
   break;
 }
out:
 kfree(info);
 return rc;
}
