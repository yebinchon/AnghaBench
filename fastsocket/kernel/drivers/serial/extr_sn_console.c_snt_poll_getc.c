
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_console_getc (int*) ;

__attribute__((used)) static int snt_poll_getc(void)
{
 int ch;

 ia64_sn_console_getc(&ch);
 return ch;
}
