
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_4__ {int udelay_val; int clock_tick; } ;
struct TYPE_3__ {int pv_printrev; int pv_romvers; } ;


 int HZ ;
 TYPE_2__ cpu_data (int ) ;
 int cputypval ;
 int mmu_info (struct seq_file*) ;
 int ncpus_probed ;
 int num_online_cpus () ;
 int prom_rev ;
 TYPE_1__* romvec ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int,int,int *,int ,int ,int,int,int ) ;
 int smp_bogo (struct seq_file*) ;
 int smp_info (struct seq_file*) ;
 int sparc_cpu_type ;
 int sparc_fpu_type ;

__attribute__((used)) static int show_cpuinfo(struct seq_file *m, void *__unused)
{
 seq_printf(m,
     "cpu\t\t: %s\n"
     "fpu\t\t: %s\n"
     "promlib\t\t: Version %d Revision %d\n"
     "prom\t\t: %d.%d\n"
     "type\t\t: %s\n"
     "ncpus probed\t: %d\n"
     "ncpus active\t: %d\n"

     "CPU0Bogo\t: %lu.%02lu\n"
     "CPU0ClkTck\t: %ld\n"

     ,
     sparc_cpu_type,
     sparc_fpu_type ,
     romvec->pv_romvers,
     prom_rev,
     romvec->pv_printrev >> 16,
     romvec->pv_printrev & 0xffff,
     &cputypval,
     ncpus_probed,
     num_online_cpus()

     , cpu_data(0).udelay_val/(500000/HZ),
     (cpu_data(0).udelay_val/(5000/HZ)) % 100,
     cpu_data(0).clock_tick

  );




 mmu_info(m);



 return 0;
}
