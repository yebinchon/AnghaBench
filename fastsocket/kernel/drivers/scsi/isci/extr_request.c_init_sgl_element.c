
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scu_sgl_element {scalar_t__ address_modifier; int address_lower; int address_upper; int length; } ;
struct scatterlist {int dummy; } ;


 int lower_32_bits (int ) ;
 int sg_dma_address (struct scatterlist*) ;
 int sg_dma_len (struct scatterlist*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void init_sgl_element(struct scu_sgl_element *e, struct scatterlist *sg)
{
 e->length = sg_dma_len(sg);
 e->address_upper = upper_32_bits(sg_dma_address(sg));
 e->address_lower = lower_32_bits(sg_dma_address(sg));
 e->address_modifier = 0;
}
