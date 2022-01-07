
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

__attribute__((used)) static void
write_spr(int n, unsigned long val)
{
 unsigned int instrs[2];
 unsigned long (*code)(unsigned long);
 code = (unsigned long (*)(unsigned long)) instrs;


 instrs[0] = 0x7c6003a6 + ((n & 0x1F) << 16) + ((n & 0x3e0) << 6);
 instrs[1] = 0x4e800020;
 store_inst(instrs);
 store_inst(instrs+1);

 if (setjmp(bus_error_jmp) == 0) {
  catch_memory_errors = 1;
  sync();

  code(val);

  sync();

  __delay(200);
  n = size;
 }
}
