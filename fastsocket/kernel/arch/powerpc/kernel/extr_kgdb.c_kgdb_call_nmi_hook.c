
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int kgdb_nmicallback (int ,struct pt_regs*) ;
 int raw_smp_processor_id () ;

__attribute__((used)) static int kgdb_call_nmi_hook(struct pt_regs *regs)
{
 kgdb_nmicallback(raw_smp_processor_id(), regs);
 return 0;
}
