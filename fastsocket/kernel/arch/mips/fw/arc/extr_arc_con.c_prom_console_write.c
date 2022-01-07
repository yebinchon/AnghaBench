
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int prom_putchar (char) ;

__attribute__((used)) static void prom_console_write(struct console *co, const char *s,
          unsigned count)
{

 while (count--) {
  if (*s == '\n')
   prom_putchar('\r');
  prom_putchar(*s++);
 }
}
