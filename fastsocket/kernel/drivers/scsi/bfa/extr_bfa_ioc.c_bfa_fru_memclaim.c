
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct bfa_fru_s {int * dbuf_kva; int dbuf_pa; } ;
typedef scalar_t__ bfa_boolean_t ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_FRU_DMA_BUF_SZ ;
 scalar_t__ BFA_ROUNDUP (int ,int ) ;
 int memset (int *,int ,int ) ;

void
bfa_fru_memclaim(struct bfa_fru_s *fru, u8 *dm_kva, u64 dm_pa,
 bfa_boolean_t mincfg)
{
 if (mincfg)
  return;

 fru->dbuf_kva = dm_kva;
 fru->dbuf_pa = dm_pa;
 memset(fru->dbuf_kva, 0, BFA_FRU_DMA_BUF_SZ);
 dm_kva += BFA_ROUNDUP(BFA_FRU_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
 dm_pa += BFA_ROUNDUP(BFA_FRU_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
}
