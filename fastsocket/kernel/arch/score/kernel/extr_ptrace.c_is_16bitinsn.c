
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INSN32_MASK ;

__attribute__((used)) static int is_16bitinsn(unsigned long insn)
{
 if ((insn & INSN32_MASK) == INSN32_MASK)
  return 0;
 else
  return 1;
}
