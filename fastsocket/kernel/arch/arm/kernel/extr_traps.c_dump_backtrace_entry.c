
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int KSYM_SYMBOL_LEN ;
 int dump_mem (char*,char*,unsigned long,unsigned long) ;
 scalar_t__ in_exception_text (unsigned long) ;
 int printk (char*,unsigned long,...) ;
 int sprint_symbol (char*,unsigned long) ;

void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
{






 printk("Function entered at [<%08lx>] from [<%08lx>]\n", where, from);


 if (in_exception_text(where))
  dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
}
