
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef int dma_addr_t ;
struct TYPE_2__ {int Address; int Length; void* NextChainOffset; void* Flags; } ;
typedef TYPE_1__ Mpi25IeeeSgeChain64_t ;


 int cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void
_base_add_sg_single_ieee(void *paddr, u8 flags, u8 chain_offset, u32 length,
 dma_addr_t dma_addr)
{
 Mpi25IeeeSgeChain64_t *sgel = paddr;

 sgel->Flags = flags;
 sgel->NextChainOffset = chain_offset;
 sgel->Length = cpu_to_le32(length);
 sgel->Address = cpu_to_le64(dma_addr);
}
