
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bfa_cee_stats_s {int dummy; } ;
struct bfa_cee_attr_s {int dummy; } ;


 int BFA_DMA_ALIGN_SZ ;
 scalar_t__ BFA_ROUNDUP (int,int ) ;

u32
bfa_cee_meminfo(void)
{
 return BFA_ROUNDUP(sizeof(struct bfa_cee_attr_s), BFA_DMA_ALIGN_SZ) +
  BFA_ROUNDUP(sizeof(struct bfa_cee_stats_s), BFA_DMA_ALIGN_SZ);
}
