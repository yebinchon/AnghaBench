
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_sn_console_xmit_chars (char*,int) ;

__attribute__((used)) static int snt_hw_puts_buffered(const char *s, int len)
{

 return ia64_sn_console_xmit_chars((char *)s, len);
}
