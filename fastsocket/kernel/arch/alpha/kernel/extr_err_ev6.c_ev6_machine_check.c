
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_common {int dummy; } ;


 char* KERN_CRIT ;
 scalar_t__ MCHK_DISPOSITION_DISMISS ;
 unsigned long SCB_Q_PROCERR ;
 int dik_show_regs (int ,int *) ;
 int draina () ;
 char* err_print_prefix ;
 scalar_t__ ev6_process_logout_frame (struct el_common*,int) ;
 int get_irq_regs () ;
 int mb () ;
 int printk (char*,char*,char*,unsigned int,int) ;
 scalar_t__ smp_processor_id () ;
 int wrmces (int) ;

void
ev6_machine_check(unsigned long vector, unsigned long la_ptr)
{
 struct el_common *mchk_header = (struct el_common *)la_ptr;




 mb();
 draina();






 if (ev6_process_logout_frame(mchk_header, 0) !=
     MCHK_DISPOSITION_DISMISS) {
  char *saved_err_prefix = err_print_prefix;
  err_print_prefix = KERN_CRIT;






  printk("%s*CPU %s Error (Vector 0x%x) reported on CPU %d:\n",
         err_print_prefix,
         (vector == SCB_Q_PROCERR)?"Correctable":"Uncorrectable",
         (unsigned int)vector, (int)smp_processor_id());

  ev6_process_logout_frame(mchk_header, 1);
  dik_show_regs(get_irq_regs(), ((void*)0));

  err_print_prefix = saved_err_prefix;
 }




 wrmces(0x7);
 mb();
}
