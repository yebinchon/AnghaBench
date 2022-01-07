
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short _inw (unsigned long) ;
 int delay () ;

unsigned short _inw_p(unsigned long port)
{
 unsigned short v = _inw(port);
 delay();
 return v;
}
