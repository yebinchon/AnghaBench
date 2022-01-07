
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PORT2ADDR (unsigned long) ;

void _outl(unsigned long l, unsigned long port)
{
 *(volatile unsigned long *)PORT2ADDR(port) = l;
}
