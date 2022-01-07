
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void chipcHw_reset_run_from_aram(void)
{

__asm (" nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"

  " MOV      r2,#0x80000000                                        \n\t"
  " LDR      r3,[r2,#8]                                            \n\t"
  " ORR      r3,r3,#0x20000                                        \n\t"
  " STR      r3,[r2,#8]                                            \n\t"

  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"
  " nop                                                            \n\t"

  " MOV      r3,#0x2                                               \n\t"
  " STR      r3,[r2,#0x80]                                         \n\t"

  " MOV      pc,pc                                                 \n\t");

}
