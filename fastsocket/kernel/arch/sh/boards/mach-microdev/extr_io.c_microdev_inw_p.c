
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 unsigned short microdev_inw (unsigned long) ;

unsigned short microdev_inw_p(unsigned long port)
{
 unsigned short v = microdev_inw(port);
 delay();
 return v;
}
