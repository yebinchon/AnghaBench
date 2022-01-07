
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {void* eptr; void* ptr; } ;
typedef int dma_addr_t ;


 void* cpu_to_be32 (int ) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void to_talitos_ptr(struct talitos_ptr *talitos_ptr, dma_addr_t dma_addr)
{
 talitos_ptr->ptr = cpu_to_be32(lower_32_bits(dma_addr));
 talitos_ptr->eptr = cpu_to_be32(upper_32_bits(dma_addr));
}
