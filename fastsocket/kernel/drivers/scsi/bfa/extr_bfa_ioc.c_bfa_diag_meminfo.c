
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BFA_DMA_ALIGN_SZ ;
 int BFA_ROUNDUP (int ,int ) ;
 int BFI_DIAG_DMA_BUF_SZ ;

u32
bfa_diag_meminfo(void)
{
 return BFA_ROUNDUP(BFI_DIAG_DMA_BUF_SZ, BFA_DMA_ALIGN_SZ);
}
