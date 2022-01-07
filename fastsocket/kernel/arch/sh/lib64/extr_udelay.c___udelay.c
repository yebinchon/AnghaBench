
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __const_udelay (unsigned long) ;

void __udelay(unsigned long usecs)
{
 __const_udelay(usecs * 0x000010c6);
}
