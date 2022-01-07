
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 long do_arch_prctl (int ,int,unsigned long) ;

long sys_arch_prctl(int code, unsigned long addr)
{
 return do_arch_prctl(current, code, addr);
}
