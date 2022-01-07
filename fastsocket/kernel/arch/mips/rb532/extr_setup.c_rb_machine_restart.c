
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IDT434_REG_BASE ;
 scalar_t__ KSEG1ADDR (int) ;
 scalar_t__ RST ;
 void stub1 () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void rb_machine_restart(char *command)
{

 writel(0x80000001, IDT434_REG_BASE + RST);
 ((void (*)(void)) KSEG1ADDR(0x1FC00000u))();
}
