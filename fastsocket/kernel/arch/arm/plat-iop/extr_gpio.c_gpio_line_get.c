
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IOP3XX_GPID ;

int gpio_line_get(int line)
{
 return !!(*IOP3XX_GPID & (1 << line));
}
