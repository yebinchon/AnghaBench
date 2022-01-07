
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _outw (unsigned short,unsigned long) ;
 int delay () ;

void _outw_p(unsigned short w, unsigned long port)
{
 _outw(w, port);
 delay();
}
