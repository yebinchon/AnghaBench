
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp37xx_circ_dma_chain {unsigned int cooked_count; int free_count; int total_count; int cooked_index; } ;


 int BUG_ON (int) ;

void stmp37xx_circ_advance_free(struct stmp37xx_circ_dma_chain *chain,
  unsigned count)
{
 BUG_ON(chain->cooked_count < count);

 chain->cooked_count -= count;
 chain->cooked_index += count;
 chain->cooked_index %= chain->total_count;
 chain->free_count += count;
}
