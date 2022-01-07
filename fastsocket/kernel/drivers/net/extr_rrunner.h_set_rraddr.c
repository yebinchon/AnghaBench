
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long addrlo; } ;
typedef TYPE_1__ rraddr ;
typedef unsigned long dma_addr_t ;


 int mb () ;

__attribute__((used)) static inline void set_rraddr(rraddr *ra, dma_addr_t addr)
{
 unsigned long baddr = addr;




 ra->addrlo = baddr;

 mb();
}
