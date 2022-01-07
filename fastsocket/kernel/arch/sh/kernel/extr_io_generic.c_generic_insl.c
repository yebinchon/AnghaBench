
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_readsl (int ,void*,unsigned long) ;
 int dummy_read () ;

void generic_insl(unsigned long port, void *dst, unsigned long count)
{
 __raw_readsl(__ioport_map(port, 4), dst, count);
 dummy_read();
}
