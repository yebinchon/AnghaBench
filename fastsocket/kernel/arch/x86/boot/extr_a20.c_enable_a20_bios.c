
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int ax; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;

__attribute__((used)) static void enable_a20_bios(void)
{
 struct biosregs ireg;

 initregs(&ireg);
 ireg.ax = 0x2401;
 intcall(0x15, &ireg, ((void*)0));
}
