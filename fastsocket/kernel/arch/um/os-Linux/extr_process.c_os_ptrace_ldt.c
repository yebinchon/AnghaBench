
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTRACE_LDT ;
 long errno ;
 int ptrace (int ,long,long,long) ;

long os_ptrace_ldt(long pid, long addr, long data)
{
 int ret;

 ret = ptrace(PTRACE_LDT, pid, addr, data);

 if (ret < 0)
  return -errno;
 return ret;
}
