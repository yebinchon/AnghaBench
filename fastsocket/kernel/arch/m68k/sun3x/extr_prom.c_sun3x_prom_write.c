
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int sun3x_putchar (char) ;

__attribute__((used)) static void sun3x_prom_write(struct console *co, const char *s,
                             unsigned int count)
{
 while (count--) {
  if (*s == '\n')
   sun3x_putchar('\r');
  sun3x_putchar(*s++);
 }
}
