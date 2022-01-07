
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_console_putb (char const*,int) ;

__attribute__((used)) static int snt_hw_puts_raw(const char *s, int len)
{

 return ia64_sn_console_putb(s, len);
}
