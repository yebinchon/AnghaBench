
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;
typedef int dma_addr_t ;


 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;

__attribute__((used)) static void __storm_memset_dma_mapping(struct bnx2x *bp,
           u32 addr, dma_addr_t mapping)
{
 REG_WR(bp, addr, U64_LO(mapping));
 REG_WR(bp, addr + 4, U64_HI(mapping));
}
