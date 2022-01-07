
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long sys_kill (int,int) ;

long sys32_kill(int pid, int sig)
{
 return sys_kill(pid, sig);
}
