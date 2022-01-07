
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 long sys_setpriority (int,int,int) ;

long compat_sys_setpriority(u32 which, u32 who, u32 niceval)
{

 return sys_setpriority((int)which, (int)who, (int)niceval);
}
