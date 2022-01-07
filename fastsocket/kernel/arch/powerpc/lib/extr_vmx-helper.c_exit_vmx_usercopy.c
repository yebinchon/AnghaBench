
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pagefault_enable () ;

int exit_vmx_usercopy(void)
{
 pagefault_enable();
 return 0;
}
