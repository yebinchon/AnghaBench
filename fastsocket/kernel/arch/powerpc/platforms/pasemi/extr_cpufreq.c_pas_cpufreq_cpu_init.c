
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct resource {scalar_t__ start; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int transition_latency; } ;
struct cpufreq_policy {int cpu; int cur; int cpus; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {int frequency; int index; } ;


 int CPUFREQ_TABLE_END ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ SDCASR_OFFSET ;
 int cpu_online_map ;
 int cpufreq_frequency_table_cpuinfo (struct cpufreq_policy*,TYPE_2__*) ;
 int cpufreq_frequency_table_get_attr (TYPE_2__*,int) ;
 int cpumask_copy (int ,int *) ;
 int get_astate_freq (int ) ;
 int get_cur_astate (int) ;
 int get_gizmo_latency () ;
 int ioremap (scalar_t__,int) ;
 int iounmap (int ) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 struct device_node* of_get_cpu_node (int,int *) ;
 int* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 TYPE_2__* pas_freqs ;
 unsigned long ppc_proc_freq ;
 int pr_debug (char*,...) ;
 int sdcasr_mapbase ;
 int sdcpwr_mapbase ;

__attribute__((used)) static int pas_cpufreq_cpu_init(struct cpufreq_policy *policy)
{
 const u32 *max_freqp;
 u32 max_freq;
 int i, cur_astate;
 struct resource res;
 struct device_node *cpu, *dn;
 int err = -ENODEV;

 cpu = of_get_cpu_node(policy->cpu, ((void*)0));

 if (!cpu)
  goto out;

 dn = of_find_compatible_node(((void*)0), ((void*)0), "1682m-sdc");
 if (!dn)
  dn = of_find_compatible_node(((void*)0), ((void*)0),
          "pasemi,pwrficient-sdc");
 if (!dn)
  goto out;
 err = of_address_to_resource(dn, 0, &res);
 of_node_put(dn);
 if (err)
  goto out;
 sdcasr_mapbase = ioremap(res.start + SDCASR_OFFSET, 0x2000);
 if (!sdcasr_mapbase) {
  err = -EINVAL;
  goto out;
 }

 dn = of_find_compatible_node(((void*)0), ((void*)0), "1682m-gizmo");
 if (!dn)
  dn = of_find_compatible_node(((void*)0), ((void*)0),
          "pasemi,pwrficient-gizmo");
 if (!dn) {
  err = -ENODEV;
  goto out_unmap_sdcasr;
 }
 err = of_address_to_resource(dn, 0, &res);
 of_node_put(dn);
 if (err)
  goto out_unmap_sdcasr;
 sdcpwr_mapbase = ioremap(res.start, 0x1000);
 if (!sdcpwr_mapbase) {
  err = -EINVAL;
  goto out_unmap_sdcasr;
 }

 pr_debug("init cpufreq on CPU %d\n", policy->cpu);

 max_freqp = of_get_property(cpu, "clock-frequency", ((void*)0));
 if (!max_freqp) {
  err = -EINVAL;
  goto out_unmap_sdcpwr;
 }


 max_freq = *max_freqp / 1000;

 pr_debug("max clock-frequency is at %u kHz\n", max_freq);
 pr_debug("initializing frequency table\n");


 for (i=0; pas_freqs[i].frequency!=CPUFREQ_TABLE_END; i++) {
  pas_freqs[i].frequency = get_astate_freq(pas_freqs[i].index) * 100000;
  pr_debug("%d: %d\n", i, pas_freqs[i].frequency);
 }

 policy->cpuinfo.transition_latency = get_gizmo_latency();

 cur_astate = get_cur_astate(policy->cpu);
 pr_debug("current astate is at %d\n",cur_astate);

 policy->cur = pas_freqs[cur_astate].frequency;
 cpumask_copy(policy->cpus, &cpu_online_map);

 ppc_proc_freq = policy->cur * 1000ul;

 cpufreq_frequency_table_get_attr(pas_freqs, policy->cpu);




 return cpufreq_frequency_table_cpuinfo(policy, pas_freqs);

out_unmap_sdcpwr:
 iounmap(sdcpwr_mapbase);

out_unmap_sdcasr:
 iounmap(sdcasr_mapbase);
out:
 return err;
}
