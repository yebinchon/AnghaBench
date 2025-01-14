
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pt_regs {unsigned int cp0_cause; char** regs; char* acx; char* hi; char* lo; int cp0_status; char* cp0_badvaddr; scalar_t__ cp0_epc; } ;
struct TYPE_2__ {scalar_t__ isa_level; } ;


 unsigned int CAUSEB_EXCCODE ;
 unsigned int CAUSEF_EXCCODE ;



 scalar_t__ MIPS_CPU_ISA_I ;
 int ST0_ERL ;
 int ST0_EXL ;
 int ST0_IE ;
 int ST0_IEC ;
 int ST0_IEO ;
 int ST0_IEP ;
 int ST0_KSU ;
 int ST0_KUC ;
 int ST0_KUO ;
 int ST0_KUP ;
 int ST0_KX ;
 int ST0_SX ;
 int ST0_UX ;
 char* cpu_name_string () ;
 TYPE_1__ current_cpu_data ;
 int print_tainted () ;
 int printk (char*,...) ;
 int const read_c0_prid () ;
 int smp_processor_id () ;

__attribute__((used)) static void __show_regs(const struct pt_regs *regs)
{
 const int field = 2 * sizeof(unsigned long);
 unsigned int cause = regs->cp0_cause;
 int i;

 printk("Cpu %d\n", smp_processor_id());




 for (i = 0; i < 32; ) {
  if ((i % 4) == 0)
   printk("$%2d   :", i);
  if (i == 0)
   printk(" %0*lx", field, 0UL);
  else if (i == 26 || i == 27)
   printk(" %*s", field, "");
  else
   printk(" %0*lx", field, regs->regs[i]);

  i++;
  if ((i % 4) == 0)
   printk("\n");
 }




 printk("Hi    : %0*lx\n", field, regs->hi);
 printk("Lo    : %0*lx\n", field, regs->lo);




 printk("epc   : %0*lx %pS\n", field, regs->cp0_epc,
        (void *) regs->cp0_epc);
 printk("    %s\n", print_tainted());
 printk("ra    : %0*lx %pS\n", field, regs->regs[31],
        (void *) regs->regs[31]);

 printk("Status: %08x    ", (uint32_t) regs->cp0_status);

 if (current_cpu_data.isa_level == MIPS_CPU_ISA_I) {
  if (regs->cp0_status & ST0_KUO)
   printk("KUo ");
  if (regs->cp0_status & ST0_IEO)
   printk("IEo ");
  if (regs->cp0_status & ST0_KUP)
   printk("KUp ");
  if (regs->cp0_status & ST0_IEP)
   printk("IEp ");
  if (regs->cp0_status & ST0_KUC)
   printk("KUc ");
  if (regs->cp0_status & ST0_IEC)
   printk("IEc ");
 } else {
  if (regs->cp0_status & ST0_KX)
   printk("KX ");
  if (regs->cp0_status & ST0_SX)
   printk("SX ");
  if (regs->cp0_status & ST0_UX)
   printk("UX ");
  switch (regs->cp0_status & ST0_KSU) {
  case 128:
   printk("USER ");
   break;
  case 129:
   printk("SUPERVISOR ");
   break;
  case 130:
   printk("KERNEL ");
   break;
  default:
   printk("BAD_MODE ");
   break;
  }
  if (regs->cp0_status & ST0_ERL)
   printk("ERL ");
  if (regs->cp0_status & ST0_EXL)
   printk("EXL ");
  if (regs->cp0_status & ST0_IE)
   printk("IE ");
 }
 printk("\n");

 printk("Cause : %08x\n", cause);

 cause = (cause & CAUSEF_EXCCODE) >> CAUSEB_EXCCODE;
 if (1 <= cause && cause <= 5)
  printk("BadVA : %0*lx\n", field, regs->cp0_badvaddr);

 printk("PrId  : %08x (%s)\n", read_c0_prid(),
        cpu_name_string());
}
