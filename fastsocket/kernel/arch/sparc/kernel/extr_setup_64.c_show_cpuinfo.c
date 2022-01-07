
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int clock_tick; } ;


 TYPE_1__ cpu_data (int ) ;
 int dcache_parity_tl1_occurred ;
 scalar_t__ hypervisor ;
 int icache_parity_tl1_occurred ;
 int mmu_info (struct seq_file*) ;
 int ncpus_probed ;
 int num_online_cpus () ;
 int prom_version ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,char*,int ,int ,int ,int ,int ) ;
 int smp_bogo (struct seq_file*) ;
 int smp_info (struct seq_file*) ;
 int sparc_cpu_type ;
 int sparc_fpu_type ;
 int sparc_pmu_type ;
 scalar_t__ tlb_type ;

__attribute__((used)) static int show_cpuinfo(struct seq_file *m, void *__unused)
{
 seq_printf(m,
     "cpu\t\t: %s\n"
     "fpu\t\t: %s\n"
     "pmu\t\t: %s\n"
     "prom\t\t: %s\n"
     "type\t\t: %s\n"
     "ncpus probed\t: %d\n"
     "ncpus active\t: %d\n"
     "D$ parity tl1\t: %u\n"
     "I$ parity tl1\t: %u\n"

     "Cpu0ClkTck\t: %016lx\n"

     ,
     sparc_cpu_type,
     sparc_fpu_type,
     sparc_pmu_type,
     prom_version,
     ((tlb_type == hypervisor) ?
      "sun4v" :
      "sun4u"),
     ncpus_probed,
     num_online_cpus(),
     dcache_parity_tl1_occurred,
     icache_parity_tl1_occurred

     , cpu_data(0).clock_tick

  );



 mmu_info(m);



 return 0;
}
