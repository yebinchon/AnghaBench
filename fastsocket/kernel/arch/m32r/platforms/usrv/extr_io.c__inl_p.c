
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _inl (unsigned long) ;
 int delay () ;

unsigned long _inl_p(unsigned long port)
{
 unsigned long v = _inl(port);
 delay();
 return v;
}
