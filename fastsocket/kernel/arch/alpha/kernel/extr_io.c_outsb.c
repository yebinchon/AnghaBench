
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_map (unsigned long,int) ;
 int iowrite8_rep (int ,void const*,unsigned long) ;

void outsb(unsigned long port, const void *src, unsigned long count)
{
 iowrite8_rep(ioport_map(port, 1), src, count);
}
