
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int RC5_ADDR (unsigned int) ;
 int RC5_INSTR (unsigned int) ;
 int RC5_START (unsigned int) ;
 int RC5_TOGGLE (unsigned int) ;
 int dprintk (int,char*,unsigned int,...) ;

__attribute__((used)) static u32 ir_rc5_decode(unsigned int code)
{
 unsigned int org_code = code;
 unsigned int pair;
 unsigned int rc5 = 0;
 int i;

 for (i = 0; i < 14; ++i) {
  pair = code & 0x3;
  code >>= 2;

  rc5 <<= 1;
  switch (pair) {
  case 0:
  case 2:
   break;
  case 1:
   rc5 |= 1;
   break;
  case 3:
   dprintk(1, "ir-common: ir_rc5_decode(%x) bad code\n", org_code);
   return 0;
  }
 }
 dprintk(1, "ir-common: code=%x, rc5=%x, start=%x, toggle=%x, address=%x, "
  "instr=%x\n", rc5, org_code, RC5_START(rc5),
  RC5_TOGGLE(rc5), RC5_ADDR(rc5), RC5_INSTR(rc5));
 return rc5;
}
