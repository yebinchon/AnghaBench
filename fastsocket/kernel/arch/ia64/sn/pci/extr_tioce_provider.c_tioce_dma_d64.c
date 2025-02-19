
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 int SN_DMA_MSI ;

__attribute__((used)) static u64
tioce_dma_d64(unsigned long ct_addr, int dma_flags)
{
 u64 bus_addr;

 bus_addr = ct_addr | (1UL << 63);
 if (dma_flags & SN_DMA_MSI)
  bus_addr |= (1UL << 61);

 return bus_addr;
}
