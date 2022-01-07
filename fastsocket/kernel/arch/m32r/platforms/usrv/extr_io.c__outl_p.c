
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _outl (unsigned long,unsigned long) ;
 int delay () ;

void _outl_p(unsigned long l, unsigned long port)
{
 _outl(l, port);
 delay();
}
