
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ XSEM_REG_FAST_MEMORY ;
 scalar_t__ XSTORM_SPQ_PAGE_BASE_OFFSET (int ) ;
 int __storm_memset_dma_mapping (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void storm_memset_spq_addr(struct bnx2x *bp,
      dma_addr_t mapping, u16 abs_fid)
{
 u32 addr = XSEM_REG_FAST_MEMORY +
   XSTORM_SPQ_PAGE_BASE_OFFSET(abs_fid);

 __storm_memset_dma_mapping(bp, addr, mapping);
}
