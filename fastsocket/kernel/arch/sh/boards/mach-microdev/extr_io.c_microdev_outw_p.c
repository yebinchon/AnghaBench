
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 int microdev_outw (unsigned short,unsigned long) ;

void microdev_outw_p(unsigned short b, unsigned long port)
{
 microdev_outw(b, port);
 delay();
}
