
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_writesl (int ,void const*,unsigned long) ;
 int dummy_read () ;

void generic_outsl(unsigned long port, const void *src, unsigned long count)
{
 __raw_writesl(__ioport_map(port, 4), src, count);
 dummy_read();
}
