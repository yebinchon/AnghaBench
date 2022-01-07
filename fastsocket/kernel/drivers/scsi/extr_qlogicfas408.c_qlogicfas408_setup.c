
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG0 ;
 int REG1 ;
 int cpu_relax () ;
 int inb (int) ;
 int outb (int,int) ;
 int qlcfg5 ;
 int qlcfg8 ;
 int qlcfg9 ;

void qlogicfas408_setup(int qbase, int id, int int_type)
{
 outb(1, qbase + 8);
 REG0;
 outb(0x40 | qlcfg8 | id, qbase + 8);
 outb(qlcfg5, qbase + 5);
 outb(qlcfg9, qbase + 9);
}
