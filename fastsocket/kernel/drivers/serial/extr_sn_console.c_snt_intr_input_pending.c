
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SAL_CONSOLE_INTR_RECV ;
 int ia64_sn_console_intr_status () ;

__attribute__((used)) static int snt_intr_input_pending(void)
{
 return ia64_sn_console_intr_status() & SAL_CONSOLE_INTR_RECV;
}
