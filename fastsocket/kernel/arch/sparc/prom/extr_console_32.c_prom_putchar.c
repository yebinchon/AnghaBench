
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_nbputchar (char) ;

void
prom_putchar(char c)
{
 while(prom_nbputchar(c) == -1) ;
 return;
}
