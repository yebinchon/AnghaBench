
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_cee_attr {int dummy; } ;


 int BFA_DMA_ALIGN_SZ ;
 int roundup (int,int ) ;

__attribute__((used)) static u32
bfa_cee_attr_meminfo(void)
{
 return roundup(sizeof(struct bfa_cee_attr), BFA_DMA_ALIGN_SZ);
}
