
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 long sys_tgkill (int,int,int) ;

long compat_sys_tgkill(u32 tgid, u32 pid, int sig)
{

 return sys_tgkill((int)tgid, (int)pid, sig);
}
