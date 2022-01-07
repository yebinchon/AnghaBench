
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biosregs {int ax; int bl; } ;


 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;
 int vga_set_8font () ;

__attribute__((used)) static void vga_set_80x43(void)
{

 struct biosregs ireg;

 initregs(&ireg);


 ireg.ax = 0x1201;
 ireg.bl = 0x30;
 intcall(0x10, &ireg, ((void*)0));


 ireg.ax = 0x0003;
 intcall(0x10, &ireg, ((void*)0));

 vga_set_8font();
}
