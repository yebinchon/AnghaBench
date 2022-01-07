
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
typedef int dma_addr_t ;
struct TYPE_2__ {int Address; int NextChainOffset; int Flags; int Length; } ;
typedef TYPE_1__ SGEChain32_t ;


 int MPI_SGE_FLAGS_CHAIN_ELEMENT ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void
mpt_add_chain(void *pAddr, u8 next, u16 length, dma_addr_t dma_addr)
{
  SGEChain32_t *pChain = (SGEChain32_t *) pAddr;
  pChain->Length = cpu_to_le16(length);
  pChain->Flags = MPI_SGE_FLAGS_CHAIN_ELEMENT;
  pChain->NextChainOffset = next;
  pChain->Address = cpu_to_le32(dma_addr);
}
