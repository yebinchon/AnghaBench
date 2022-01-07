
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_udelay (unsigned long) ;
 int stub1 (unsigned long) ;

void
udelay (unsigned long usecs)
{
 (*ia64_udelay)(usecs);
}
