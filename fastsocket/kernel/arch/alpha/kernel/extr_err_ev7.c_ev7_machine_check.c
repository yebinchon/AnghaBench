
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct el_subpacket {int dummy; } ;


 char* KERN_CRIT ;
 unsigned long SCB_Q_PROCERR ;
 int draina () ;
 int el_process_subpacket (struct el_subpacket*) ;
 char* err_print_prefix ;
 int mb () ;
 int printk (char*,char*,char*,unsigned int,int) ;
 scalar_t__ smp_processor_id () ;
 int wrmces (int) ;

void
ev7_machine_check(unsigned long vector, unsigned long la_ptr)
{
 struct el_subpacket *el_ptr = (struct el_subpacket *)la_ptr;
 char *saved_err_prefix = err_print_prefix;




 mb();
 draina();

 err_print_prefix = KERN_CRIT;
 printk("%s*CPU %s Error (Vector 0x%x) reported on CPU %d\n",
        err_print_prefix,
        (vector == SCB_Q_PROCERR) ? "Correctable" : "Uncorrectable",
        (unsigned int)vector, (int)smp_processor_id());
 el_process_subpacket(el_ptr);
 err_print_prefix = saved_err_prefix;




 wrmces(0x7);
 mb();
}
