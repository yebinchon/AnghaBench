
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int nasid_t ;
struct TYPE_7__ {scalar_t__ virtid; } ;
struct TYPE_8__ {TYPE_1__ cpu_info; } ;
typedef TYPE_2__ klcpu_t ;
struct TYPE_9__ {int * g_nasidtable; } ;
typedef TYPE_3__ gda_t ;
typedef scalar_t__ cpuid_t ;
typedef size_t cnodeid_t ;


 int CPUS_PER_NODE ;
 TYPE_3__* GDA ;
 size_t INVALID_CNODEID ;
 int INVALID_NASID ;
 scalar_t__ MAXCPUS ;
 size_t get_cpu_cnode (scalar_t__) ;
 TYPE_2__* nasid_slice_to_cpuinfo (int ,int) ;
 int printk (char*,scalar_t__) ;

klcpu_t * sn_get_cpuinfo(cpuid_t cpu)
{
 nasid_t nasid;
 int slice;
 klcpu_t *acpu;
 gda_t *gdap = GDA;
 cnodeid_t cnode;

 if (!(cpu < MAXCPUS)) {
  printk("sn_get_cpuinfo: illegal cpuid 0x%lx\n", cpu);
  return ((void*)0);
 }

 cnode = get_cpu_cnode(cpu);
 if (cnode == INVALID_CNODEID)
  return ((void*)0);

 if ((nasid = gdap->g_nasidtable[cnode]) == INVALID_NASID)
  return ((void*)0);

 for (slice = 0; slice < CPUS_PER_NODE; slice++) {
  acpu = nasid_slice_to_cpuinfo(nasid, slice);
  if (acpu && acpu->cpu_info.virtid == cpu)
   return acpu;
 }
 return ((void*)0);
}
