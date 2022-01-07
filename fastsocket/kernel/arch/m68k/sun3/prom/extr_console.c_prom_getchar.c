
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int prom_nbgetchar () ;

char
prom_getchar(void)
{
 int character;
 while((character = prom_nbgetchar()) == -1) ;
 return (char) character;
}
