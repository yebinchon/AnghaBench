
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ftrace_func_t ;


 int MCOUNT_INSN_SIZE ;
 int ftrace_call ;
 unsigned char* ftrace_call_replace (unsigned long,unsigned long) ;
 int ftrace_modify_code (unsigned long,unsigned char*,unsigned char*) ;
 int memcpy (unsigned long*,int *,int ) ;

int ftrace_update_ftrace_func(ftrace_func_t func)
{
 int ret;
 unsigned long pc, old;
 unsigned char *new;

 pc = (unsigned long)&ftrace_call;
 memcpy(&old, &ftrace_call, MCOUNT_INSN_SIZE);
 new = ftrace_call_replace(pc, (unsigned long)func);
 ret = ftrace_modify_code(pc, (unsigned char *)&old, new);
 return ret;
}
