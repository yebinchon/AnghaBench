
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_map_state {int unmapped_index; int unmapped_addr; struct scatterlist* unmapped_sg; } ;
struct scatterlist {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static void srp_map_update_start(struct srp_map_state *state,
     struct scatterlist *sg, int sg_index,
     dma_addr_t dma_addr)
{
 state->unmapped_sg = sg;
 state->unmapped_index = sg_index;
 state->unmapped_addr = dma_addr;
}
