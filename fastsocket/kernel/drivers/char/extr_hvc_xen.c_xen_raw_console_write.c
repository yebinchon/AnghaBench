
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int raw_console_write (char const*,int ) ;
 int strlen (char const*) ;

void xen_raw_console_write(const char *str)
{
 raw_console_write(str, strlen(str));
}
