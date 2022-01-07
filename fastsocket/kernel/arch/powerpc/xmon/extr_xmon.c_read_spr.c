
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __delay (int) ;
 int bus_error_jmp ;
 int catch_memory_errors ;
 scalar_t__ setjmp (int ) ;
 int size ;
 int store_inst (unsigned int*) ;
 int sync () ;

__attribute__((used)) static unsigned long
read_spr(int n)
{
 unsigned int instrs[2];
 unsigned long (*code)(void);
 unsigned long ret = -1UL;
 code = (unsigned long (*)(void)) instrs;



 instrs[0] = 0x7c6002a6 + ((n & 0x1F) << 16) + ((n & 0x3e0) << 6);
 instrs[1] = 0x4e800020;
 store_inst(instrs);
 store_inst(instrs+1);

 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();

  ret = code();

  sync();

  __delay(200);
  n = size;
 }

 return ret;
}
