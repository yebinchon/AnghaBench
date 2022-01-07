
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 long sys_nice (int) ;

long compat_sys_nice(u32 increment)
{

 return sys_nice((int)increment);
}
