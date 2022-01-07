
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __prom_putc (char) ;

void prom_putchar(char c)
{
 __prom_putc(c);
}
