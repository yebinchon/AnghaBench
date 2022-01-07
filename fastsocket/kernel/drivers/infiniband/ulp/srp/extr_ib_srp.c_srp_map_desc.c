
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct srp_map_state {unsigned int total_len; int ndesc; struct srp_direct_buf* desc; } ;
struct srp_direct_buf {void* len; void* key; int va; } ;
typedef int dma_addr_t ;


 void* cpu_to_be32 (unsigned int) ;
 int cpu_to_be64 (int ) ;

__attribute__((used)) static void srp_map_desc(struct srp_map_state *state, dma_addr_t dma_addr,
    unsigned int dma_len, u32 rkey)
{
 struct srp_direct_buf *desc = state->desc;

 desc->va = cpu_to_be64(dma_addr);
 desc->key = cpu_to_be32(rkey);
 desc->len = cpu_to_be32(dma_len);

 state->total_len += dma_len;
 state->desc++;
 state->ndesc++;
}
