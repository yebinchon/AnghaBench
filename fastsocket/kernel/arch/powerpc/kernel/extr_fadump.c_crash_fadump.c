
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct fadump_crash_info_header {int cpu_online_mask; struct pt_regs regs; int crashing_cpu; } ;
struct TYPE_2__ {int fadumphdr_addr; int dump_registered; } ;


 struct fadump_crash_info_header* __va (int ) ;
 int * cpu_online_mask ;
 int crash_save_vmcoreinfo () ;
 int crashing_cpu ;
 TYPE_1__ fw_dump ;
 int ppc_save_regs (struct pt_regs*) ;
 int rtas_os_term (char*) ;
 int smp_processor_id () ;

void crash_fadump(struct pt_regs *regs, const char *str)
{
 struct fadump_crash_info_header *fdh = ((void*)0);

 if (!fw_dump.dump_registered || !fw_dump.fadumphdr_addr)
  return;

 fdh = __va(fw_dump.fadumphdr_addr);
 crashing_cpu = smp_processor_id();
 fdh->crashing_cpu = crashing_cpu;
 crash_save_vmcoreinfo();

 if (regs)
  fdh->regs = *regs;
 else
  ppc_save_regs(&fdh->regs);

 fdh->cpu_online_mask = *cpu_online_mask;


 rtas_os_term((char *)str);
}
