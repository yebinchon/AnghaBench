
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int * gr; } ;


 int PRINTREGS (char*,int *,char*,int ,int) ;
 int RFMT ;
 int print_tainted () ;
 int printbinary (char*,int ,int) ;
 int printk (char*,char*,...) ;

__attribute__((used)) static void print_gr(char *level, struct pt_regs *regs)
{
 int i;
 char buf[64];

 printk("%s\n", level);
 printk("%s     YZrvWESTHLNXBCVMcbcbcbcbOGFRQPDI\n", level);
 printbinary(buf, regs->gr[0], 32);
 printk("%sPSW: %s %s\n", level, buf, print_tainted());

 for (i = 0; i < 32; i += 4)
  PRINTREGS(level, regs->gr, "r", RFMT, i);
}
