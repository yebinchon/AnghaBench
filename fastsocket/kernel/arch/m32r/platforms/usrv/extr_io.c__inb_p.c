
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char _inb (unsigned long) ;
 int delay () ;

unsigned char _inb_p(unsigned long port)
{
 unsigned char v = _inb(port);
 delay();
 return v;
}
