
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int * dbuf_kva; int dbuf_pa; } ;
struct bfa_diag_s {TYPE_1__ fwping; } ;


 int BFI_DIAG_DMA_BUF_SZ ;
 int memset (int *,int ,int ) ;

void
bfa_diag_memclaim(struct bfa_diag_s *diag, u8 *dm_kva, u64 dm_pa)
{
 diag->fwping.dbuf_kva = dm_kva;
 diag->fwping.dbuf_pa = dm_pa;
 memset(diag->fwping.dbuf_kva, 0, BFI_DIAG_DMA_BUF_SZ);
}
