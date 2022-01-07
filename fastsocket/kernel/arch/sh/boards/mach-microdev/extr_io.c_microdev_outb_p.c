
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 int microdev_outb (unsigned char,unsigned long) ;

void microdev_outb_p(unsigned char b, unsigned long port)
{
 microdev_outb(b, port);
 delay();
}
