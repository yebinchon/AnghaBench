
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; int link; int * gpr; } ;



 int backtrace (struct pt_regs*) ;
 int bootcmds () ;
 int bpt_cmds () ;
 int cacheflush () ;
 int cpu_cmd () ;
 int csum () ;
 int do_spu_cmd () ;
 int do_step (struct pt_regs*) ;
 int dump () ;
 int dump_segments () ;
 int dump_tlb_44x () ;
 int excprint (struct pt_regs*) ;
 int flush_input () ;
 int help_string ;
 int inchar () ;
 int * last_cmd ;
 int mdelay (int) ;
 int memex () ;
 int memlocate () ;
 int memops (int) ;
 int memzcan () ;
 int printf (char*,...) ;
 int proccall () ;
 int prregs (struct pt_regs*) ;
 int putchar (int) ;
 int show_mem (int ) ;
 int skipbl () ;
 int smp_processor_id () ;
 int super_regs () ;
 int symbol_lookup () ;
 int take_input (int *) ;
 int termch ;
 int xmon_no_auto_backtrace ;
 int xmon_puts (int ) ;
 struct pt_regs* xmon_regs ;
 int xmon_show_stack (int ,int ,int ) ;

__attribute__((used)) static int
cmds(struct pt_regs *excp)
{
 int cmd = 0;

 last_cmd = ((void*)0);
 xmon_regs = excp;

 if (!xmon_no_auto_backtrace) {
  xmon_no_auto_backtrace = 1;
  xmon_show_stack(excp->gpr[1], excp->link, excp->nip);
 }

 for(;;) {



  printf("mon> ");
  flush_input();
  termch = 0;
  cmd = skipbl();
  if( cmd == '\n' ) {
   if (last_cmd == ((void*)0))
    continue;
   take_input(last_cmd);
   last_cmd = ((void*)0);
   cmd = inchar();
  }
  switch (cmd) {
  case 'm':
   cmd = inchar();
   switch (cmd) {
   case 'm':
   case 's':
   case 'd':
    memops(cmd);
    break;
   case 'l':
    memlocate();
    break;
   case 'z':
    memzcan();
    break;
   case 'i':
    show_mem(0);
    break;
   default:
    termch = cmd;
    memex();
   }
   break;
  case 'd':
   dump();
   break;
  case 'l':
   symbol_lookup();
   break;
  case 'r':
   prregs(excp);
   break;
  case 'e':
   excprint(excp);
   break;
  case 'S':
   super_regs();
   break;
  case 't':
   backtrace(excp);
   break;
  case 'f':
   cacheflush();
   break;
  case 's':
   if (do_spu_cmd() == 0)
    break;
   if (do_step(excp))
    return cmd;
   break;
  case 'x':
  case 'X':
   return cmd;
  case 128:
   printf(" <no input ...>\n");
   mdelay(2000);
   return cmd;
  case '?':
   xmon_puts(help_string);
   break;
  case 'b':
   bpt_cmds();
   break;
  case 'C':
   csum();
   break;
  case 'c':
   if (cpu_cmd())
    return 0;
   break;
  case 'z':
   bootcmds();
   break;
  case 'p':
   proccall();
   break;
  default:
   printf("Unrecognized command: ");
          do {
    if (' ' < cmd && cmd <= '~')
     putchar(cmd);
    else
     printf("\\x%x", cmd);
    cmd = inchar();
          } while (cmd != '\n');
   printf(" (type ? for help)\n");
   break;
  }
 }
}
