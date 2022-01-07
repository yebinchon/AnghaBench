
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __const_udelay (unsigned long) ;

void __ndelay(unsigned long nsecs)
{
 __const_udelay(nsecs * 0x00000005);
}
