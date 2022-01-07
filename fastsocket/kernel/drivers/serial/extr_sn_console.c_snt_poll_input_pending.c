
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_console_check (int*) ;

__attribute__((used)) static int snt_poll_input_pending(void)
{
 int status, input;

 status = ia64_sn_console_check(&input);
 return !status && input;
}
