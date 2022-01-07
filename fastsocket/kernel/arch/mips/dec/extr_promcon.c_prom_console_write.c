
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int prom_printf (char*,int) ;

__attribute__((used)) static void prom_console_write(struct console *co, const char *s,
          unsigned count)
{
 unsigned i;




 for (i = 0; i < count; i++) {
  if (*s == 10)
   prom_printf("%c", 13);
  prom_printf("%c", *s++);
 }
}
