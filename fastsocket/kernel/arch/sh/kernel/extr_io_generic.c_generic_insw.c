
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_readsw (int ,void*,unsigned long) ;
 int dummy_read () ;

void generic_insw(unsigned long port, void *dst, unsigned long count)
{
 __raw_readsw(__ioport_map(port, 2), dst, count);
 dummy_read();
}
