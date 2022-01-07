
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {long retx; int syscfg; int ipend; } ;


 int bfin_correct_hw_break () ;
 int * current ;
 int * kgdb_contthread ;
 int kgdb_hex2long (char**,long*) ;
 int kgdb_single_step ;
 int strcpy (char*,char*) ;

int kgdb_arch_handle_exception(int vector, int signo,
          int err_code, char *remcom_in_buffer,
          char *remcom_out_buffer,
          struct pt_regs *regs)
{
 long addr;
 char *ptr;
 int newPC;
 int i;

 switch (remcom_in_buffer[0]) {
 case 'c':
 case 's':
  if (kgdb_contthread && kgdb_contthread != current) {
   strcpy(remcom_out_buffer, "E00");
   break;
  }

  kgdb_contthread = ((void*)0);


  ptr = &remcom_in_buffer[1];
  if (kgdb_hex2long(&ptr, &addr)) {
   regs->retx = addr;
  }
  newPC = regs->retx;


  regs->syscfg &= 0xfffffffe;


  if (remcom_in_buffer[0] == 's') {
   regs->syscfg |= 0x1;
   kgdb_single_step = regs->ipend;
   kgdb_single_step >>= 6;
   for (i = 10; i > 0; i--, kgdb_single_step >>= 1)
    if (kgdb_single_step & 1)
     break;




   kgdb_single_step = i + 1;
  }

  bfin_correct_hw_break();

  return 0;
 }
 return -1;
}
