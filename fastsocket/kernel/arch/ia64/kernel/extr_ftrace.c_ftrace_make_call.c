
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_ftrace {unsigned long ip; } ;


 unsigned char* ftrace_call_replace (unsigned long,unsigned long) ;
 int ftrace_modify_code (unsigned long,unsigned char*,unsigned char*,int) ;
 unsigned char* ftrace_nop_replace () ;

int ftrace_make_call(struct dyn_ftrace *rec, unsigned long addr)
{
 unsigned long ip = rec->ip;
 unsigned char *old, *new;

 old= ftrace_nop_replace();
 new = ftrace_call_replace(ip, addr);
 return ftrace_modify_code(ip, old, new, 1);
}
