
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 unsigned char microdev_inb (unsigned long) ;

unsigned char microdev_inb_p(unsigned long port)
{
 unsigned char v = microdev_inb(port);
 delay();
 return v;
}
