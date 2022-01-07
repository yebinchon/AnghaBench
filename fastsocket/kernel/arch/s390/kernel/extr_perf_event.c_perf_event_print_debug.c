
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumf_ctr_info {int act_ctl; int enable_ctl; int auth_ctl; int csvn; int cfvn; } ;
typedef int cf_info ;


 int DUMP_PREFIX_OFFSET ;
 int cpum_cf_avail () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int memset (struct cpumf_ctr_info*,int ,int) ;
 int pr_info (char*,int,int ,int ,int ,int ,int ) ;
 int print_hex_dump_bytes (char*,int ,struct cpumf_ctr_info*,int) ;
 int qctri (struct cpumf_ctr_info*) ;
 int smp_processor_id () ;

void perf_event_print_debug(void)
{
 struct cpumf_ctr_info cf_info;
 unsigned long flags;
 int cpu;

 if (!cpum_cf_avail())
  return;

 local_irq_save(flags);

 cpu = smp_processor_id();
 memset(&cf_info, 0, sizeof(cf_info));
 if (!qctri(&cf_info)) {
  pr_info("CPU[%i] CPUM_CF: ver=%u.%u A=%04x E=%04x C=%04x\n",
   cpu, cf_info.cfvn, cf_info.csvn,
   cf_info.auth_ctl, cf_info.enable_ctl, cf_info.act_ctl);
  print_hex_dump_bytes("CPUMF Query: ", DUMP_PREFIX_OFFSET,
         &cf_info, sizeof(cf_info));
 }

 local_irq_restore(flags);
}
