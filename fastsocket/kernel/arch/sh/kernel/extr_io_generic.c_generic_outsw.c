
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_writesw (int ,void const*,unsigned long) ;
 int dummy_read () ;

void generic_outsw(unsigned long port, const void *src, unsigned long count)
{
 __raw_writesw(__ioport_map(port, 2), src, count);
 dummy_read();
}
