
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delay () ;
 unsigned int microdev_inl (unsigned long) ;

unsigned int microdev_inl_p(unsigned long port)
{
 unsigned int v = microdev_inl(port);
 delay();
 return v;
}
