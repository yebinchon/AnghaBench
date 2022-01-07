
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int mac_sccb_out (char) ;

__attribute__((used)) static void mac_sccb_console_write(struct console *co, const char *str,
       unsigned int count)
{
 while (count--) {
  if (*str == '\n')
   mac_sccb_out('\r');
  mac_sccb_out(*str++);
 }
}
