
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int sr; } ;


 int PS_S ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int add_taint (int ) ;
 int console_verbose () ;
 int do_exit (int ) ;
 int printk (char*,char*,int) ;
 int show_registers (struct pt_regs*) ;

void die_if_kernel (char *str, struct pt_regs *fp, int nr)
{
 if (!(fp->sr & PS_S))
  return;

 console_verbose();
 printk("%s: %08x\n",str,nr);
 show_registers(fp);
 add_taint(TAINT_DIE);
 do_exit(SIGSEGV);
}
