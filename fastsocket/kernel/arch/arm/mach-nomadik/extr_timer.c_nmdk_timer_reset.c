
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ MTU_BGLR (int ) ;
 scalar_t__ MTU_CR (int ) ;
 int MTU_CRn_32BITS ;
 int MTU_CRn_ENA ;
 int MTU_CRn_PERIODIC ;
 int MTU_CRn_PRESCALE_1 ;
 scalar_t__ MTU_LR (int ) ;
 scalar_t__ mtu_base ;
 int nmdk_cycle ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void nmdk_timer_reset(void)
{
 u32 cr;

 writel(0, mtu_base + MTU_CR(0));


 writel(nmdk_cycle, mtu_base + MTU_LR(0));
 writel(nmdk_cycle, mtu_base + MTU_BGLR(0));
 cr = MTU_CRn_PERIODIC | MTU_CRn_PRESCALE_1 | MTU_CRn_32BITS;
 writel(cr, mtu_base + MTU_CR(0));
 writel(cr | MTU_CRn_ENA, mtu_base + MTU_CR(0));
}
