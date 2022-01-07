
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ioport_map (unsigned long,int) ;
 int ioread32_rep (int ,void*,unsigned long) ;

void insl(unsigned long port, void *dst, unsigned long count)
{
 ioread32_rep(ioport_map(port, 4), dst, count);
}
