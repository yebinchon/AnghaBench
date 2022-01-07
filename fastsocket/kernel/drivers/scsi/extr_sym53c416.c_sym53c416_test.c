
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CE ;
 scalar_t__ COMMAND_REG ;
 int EIE ;
 int EMPTY ;
 int FIE ;
 int FULL ;
 int NOOP ;
 int OUE ;
 scalar_t__ PIO_INT_REG ;
 int RESET_CHIP ;
 scalar_t__ TC_HIGH ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int sym53c416_test(int base)
{
 outb(RESET_CHIP, base + COMMAND_REG);
 outb(NOOP, base + COMMAND_REG);
 if(inb(base + COMMAND_REG) != NOOP)
  return 0;
 if(!inb(base + TC_HIGH) || inb(base + TC_HIGH) == 0xFF)
  return 0;
 if((inb(base + PIO_INT_REG) & (FULL | EMPTY | CE | OUE | FIE | EIE)) != EMPTY)
  return 0;
 return 1;
}
