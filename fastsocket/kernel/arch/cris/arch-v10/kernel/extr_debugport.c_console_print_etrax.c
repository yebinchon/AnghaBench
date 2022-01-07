
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_write (int *,char const*,int ) ;
 int strlen (char const*) ;

void
console_print_etrax(const char *buf)
{
 console_write(((void*)0), buf, strlen(buf));
}
