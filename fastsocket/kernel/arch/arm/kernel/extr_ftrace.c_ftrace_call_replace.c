
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long BL_OFFSET_MASK ;
 long BL_OPCODE ;
 scalar_t__ PC_OFFSET ;
 int WARN_ON_ONCE (int) ;
 long bl_insn ;
 scalar_t__ unlikely (int) ;

unsigned char *ftrace_call_replace(unsigned long pc, unsigned long addr)
{
 long offset;

 offset = (long)addr - (long)(pc + PC_OFFSET);
 if (unlikely(offset < -33554432 || offset > 33554428)) {



  WARN_ON_ONCE(1);
  return ((void*)0);
 }
 offset = (offset >> 2) & BL_OFFSET_MASK;
 bl_insn = BL_OPCODE | offset;
 return (unsigned char *)&bl_insn;
}
