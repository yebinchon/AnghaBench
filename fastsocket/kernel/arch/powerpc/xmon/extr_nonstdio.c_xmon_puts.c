
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 int xmon_write (char const*,int ) ;

void xmon_puts(const char *str)
{
 xmon_write(str, strlen(str));
}
