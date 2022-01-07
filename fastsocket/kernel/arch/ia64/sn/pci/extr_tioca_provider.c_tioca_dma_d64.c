
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int PHYS_TO_TIODMA (unsigned long) ;

__attribute__((used)) static u64
tioca_dma_d64(unsigned long paddr)
{
 dma_addr_t bus_addr;

 bus_addr = PHYS_TO_TIODMA(paddr);

 BUG_ON(!bus_addr);
 BUG_ON(bus_addr >> 54);


 bus_addr |= (1UL << 60);

 return bus_addr;
}
