
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ioport_map (unsigned long,int) ;
 int __raw_readsb (int ,void*,unsigned long) ;
 int dummy_read () ;

void generic_insb(unsigned long port, void *dst, unsigned long count)
{
 __raw_readsb(__ioport_map(port, 1), dst, count);
 dummy_read();
}
