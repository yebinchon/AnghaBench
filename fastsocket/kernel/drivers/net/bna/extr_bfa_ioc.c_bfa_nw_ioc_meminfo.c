
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfi_ioc_attr {int dummy; } ;


 int BFA_DMA_ALIGN_SZ ;
 int roundup (int,int ) ;

u32
bfa_nw_ioc_meminfo(void)
{
 return roundup(sizeof(struct bfi_ioc_attr), BFA_DMA_ALIGN_SZ);
}
