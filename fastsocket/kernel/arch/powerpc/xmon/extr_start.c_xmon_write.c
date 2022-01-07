
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int udbg_write (void const*,int) ;

int xmon_write(const void *ptr, int nb)
{
 return udbg_write(ptr, nb);
}
