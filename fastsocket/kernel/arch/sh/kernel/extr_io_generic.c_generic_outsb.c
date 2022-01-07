
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_writesb (int ,void const*,unsigned long) ;
 int dummy_read () ;

void generic_outsb(unsigned long port, const void *src, unsigned long count)
{
 __raw_writesb(__ioport_map(port, 1), src, count);
 dummy_read();
}
