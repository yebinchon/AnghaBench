
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int mac_scca_out (char) ;

__attribute__((used)) static void mac_scca_console_write(struct console *co, const char *str,
       unsigned int count)
{
 while (count--) {
  if (*str == '\n')
   mac_scca_out('\r');
  mac_scca_out(*str++);
 }
}
