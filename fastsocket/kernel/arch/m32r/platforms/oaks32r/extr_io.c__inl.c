
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;

unsigned long _inl(unsigned long port)
{
 return *(volatile unsigned long *)PORT2ADDR(port);
}
