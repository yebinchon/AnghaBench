
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline unsigned int dma_chain_flag_bits(uint16_t prepost_bits)
{
 return (prepost_bits >> 6) & 0x3;
}
