
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int dma_addr_t ;


 int upper_32_bits (int ) ;

__attribute__((used)) static inline u32 dma_high(dma_addr_t addr)
{
 return upper_32_bits(addr);
}
