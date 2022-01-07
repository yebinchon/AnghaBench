
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct biosregs {int ax; int al; } ;


 int do_restore ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,struct biosregs*) ;
 int rdfs8 (int) ;
 int set_fs (int ) ;

__attribute__((used)) static u8 vga_set_basic_mode(void)
{
 struct biosregs ireg, oreg;
 u8 rows;
 u8 mode;

 initregs(&ireg);

 ireg.ax = 0x0f00;
 intcall(0x10, &ireg, &oreg);
 mode = oreg.al;

 set_fs(0);
 rows = rdfs8(0x484);

 if ((oreg.ax == 0x5003 || oreg.ax == 0x5007) &&
     (rows == 0 || rows == 24))
  return mode;

 if (mode != 3 && mode != 7)
  mode = 3;


 ireg.ax = mode;
 intcall(0x10, &ireg, ((void*)0));
 do_restore = 1;
 return mode;
}
