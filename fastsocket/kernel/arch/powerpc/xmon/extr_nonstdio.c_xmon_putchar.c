
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xmon_write (char*,int) ;

int xmon_putchar(int c)
{
 char ch = c;

 if (c == '\n')
  xmon_putchar('\r');
 return xmon_write(&ch, 1) == 1? c: -1;
}
