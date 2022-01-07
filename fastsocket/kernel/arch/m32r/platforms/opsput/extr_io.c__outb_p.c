
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _outb (unsigned char,unsigned long) ;
 int delay () ;

void _outb_p(unsigned char b, unsigned long port)
{
 _outb(b, port);
 delay();
}
