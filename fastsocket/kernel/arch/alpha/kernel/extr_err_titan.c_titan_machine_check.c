
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct el_common {scalar_t__ sys_offset; } ;
struct el_TITAN_sysdata_mcheck {int c_dirx; } ;


 char* KERN_CRIT ;
 scalar_t__ MCHK_DISPOSITION_DISMISS ;
 unsigned long SCB_Q_SYSERR ;
 unsigned long SCB_Q_SYSMCHK ;
 int TITAN_MCHECK_INTERRUPT_MASK ;
 scalar_t__ alpha_verbose_mcheck ;
 int dik_show_regs (int ,int *) ;
 int draina () ;
 char* err_print_prefix ;
 int ev6_machine_check (unsigned long,unsigned long) ;
 int get_irq_regs () ;
 int mb () ;
 int printk (char*,char*,char*,unsigned int,int) ;
 scalar_t__ smp_processor_id () ;
 int titan_dispatch_irqs (int) ;
 scalar_t__ titan_process_logout_frame (struct el_common*,scalar_t__) ;
 int wrmces (int) ;

void
titan_machine_check(unsigned long vector, unsigned long la_ptr)
{
 struct el_common *mchk_header = (struct el_common *)la_ptr;
 struct el_TITAN_sysdata_mcheck *tmchk =
  (struct el_TITAN_sysdata_mcheck *)
  ((unsigned long)mchk_header + mchk_header->sys_offset);
 u64 irqmask;
 mb();
 draina();




 if ((vector != SCB_Q_SYSMCHK) && (vector != SCB_Q_SYSERR)) {
  ev6_machine_check(vector, la_ptr);
  return;
 }
 if (titan_process_logout_frame(mchk_header, 0) !=
     MCHK_DISPOSITION_DISMISS) {
  char *saved_err_prefix = err_print_prefix;
  err_print_prefix = KERN_CRIT;






  printk("%s"
         "*System %s Error (Vector 0x%x) reported on CPU %d:\n",
         err_print_prefix,
         (vector == SCB_Q_SYSERR)?"Correctable":"Uncorrectable",
         (unsigned int)vector, (int)smp_processor_id());







  err_print_prefix = saved_err_prefix;





  irqmask = tmchk->c_dirx & 0xF800000000000000UL;
  titan_dispatch_irqs(irqmask);
 }





 wrmces(0x7);
 mb();
}
