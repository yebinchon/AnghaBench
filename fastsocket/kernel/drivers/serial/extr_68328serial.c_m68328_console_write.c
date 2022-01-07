
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int m68328_console_initted ;
 int m68328_set_baud () ;
 int rs_put_char (char) ;

void m68328_console_write (struct console *co, const char *str,
      unsigned int count)
{
 if (!m68328_console_initted)
  m68328_set_baud();
    while (count--) {
        if (*str == '\n')
           rs_put_char('\r');
        rs_put_char( *str++ );
    }
}
