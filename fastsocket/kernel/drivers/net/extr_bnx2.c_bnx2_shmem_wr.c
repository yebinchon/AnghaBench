
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2 {scalar_t__ shmem_base; } ;


 int bnx2_reg_wr_ind (struct bnx2*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bnx2_shmem_wr(struct bnx2 *bp, u32 offset, u32 val)
{
 bnx2_reg_wr_ind(bp, bp->shmem_base + offset, val);
}
