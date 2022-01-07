
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int instr ;


 int STK_ALLOC_1M ;
 int STK_ALLOC_MATCH (int) ;

__attribute__((used)) static long
stack_increment(instr * prologue_pc)
{
 while (!STK_ALLOC_MATCH(*prologue_pc))
  ++prologue_pc;


 if ((*prologue_pc & STK_ALLOC_1M) == STK_ALLOC_1M)
  return -(((long)(*prologue_pc) << 48) >> 48);
 else
  return (*prologue_pc >> 13) & 0xff;
}
