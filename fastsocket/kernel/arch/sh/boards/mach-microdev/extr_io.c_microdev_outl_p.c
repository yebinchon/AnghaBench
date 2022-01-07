
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 int microdev_outl (unsigned int,unsigned long) ;

void microdev_outl_p(unsigned int b, unsigned long port)
{
 microdev_outl(b, port);
 delay();
}
