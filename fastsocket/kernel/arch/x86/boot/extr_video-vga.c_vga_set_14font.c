
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int ax; int bl; int cx; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;

__attribute__((used)) static void vga_set_14font(void)
{

 struct biosregs ireg;

 initregs(&ireg);


 ireg.ax = 0x1111;

 intcall(0x10, &ireg, ((void*)0));


 ireg.ax = 0x1201;
 ireg.bl = 0x34;
 intcall(0x10, &ireg, ((void*)0));


 ireg.ax = 0x0100;
 ireg.cx = 0x0b0c;
 intcall(0x10, &ireg, ((void*)0));
}
