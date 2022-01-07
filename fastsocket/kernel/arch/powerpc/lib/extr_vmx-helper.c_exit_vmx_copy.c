
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int preempt_enable () ;

void *exit_vmx_copy(void *dest)
{
 preempt_enable();
 return dest;
}
