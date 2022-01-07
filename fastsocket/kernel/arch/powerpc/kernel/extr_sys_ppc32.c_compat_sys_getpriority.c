
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 long sys_getpriority (int,int) ;

long compat_sys_getpriority(u32 which, u32 who)
{

 return sys_getpriority((int)which, (int)who);
}
