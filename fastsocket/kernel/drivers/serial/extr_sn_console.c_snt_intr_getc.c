
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_console_readc () ;

__attribute__((used)) static int snt_intr_getc(void)
{
 return ia64_sn_console_readc();
}
