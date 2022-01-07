
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_call_insn {unsigned long imm39_l; unsigned long imm39_h; unsigned long imm20; unsigned long i; } ;


 unsigned char* ftrace_call_code ;

__attribute__((used)) static unsigned char *ftrace_call_replace(unsigned long ip, unsigned long addr)
{
 struct ftrace_call_insn *code = (void *)ftrace_call_code;
 unsigned long offset = addr - (ip + 0x10);

 code->imm39_l = offset >> 24;
 code->imm39_h = offset >> 40;
 code->imm20 = offset >> 4;
 code->i = offset >> 63;
 return ftrace_call_code;
}
