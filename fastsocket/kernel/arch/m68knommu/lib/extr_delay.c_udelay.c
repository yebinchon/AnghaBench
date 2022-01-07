
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _udelay (unsigned long) ;

void udelay(unsigned long usecs)
{
 _udelay(usecs);
}
