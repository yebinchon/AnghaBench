
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_iop {int ram_addr_lo; int ram_addr_hi; } ;
typedef int __u16 ;



__attribute__((used)) static __inline__ void iop_loadaddr(volatile struct mac_iop *iop, __u16 addr)
{
 iop->ram_addr_lo = addr;
 iop->ram_addr_hi = addr >> 8;
}
