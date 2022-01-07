
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int early_printk_putc (char const) ;

__attribute__((used)) static void early_printk_write(struct console *unused,
     const char *s, unsigned n)
{
 while (*s && n-- > 0) {
  early_printk_putc(*s);
  if (*s == '\n')
   early_printk_putc('\r');
  s++;
 }
}
