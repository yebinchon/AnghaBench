
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc {scalar_t__ xpec_base; scalar_t__ xmac_base; } ;


 scalar_t__ NETX_XMAC_RPU_HOLD_PC_OFS ;
 scalar_t__ NETX_XMAC_TPU_HOLD_PC_OFS ;
 scalar_t__ NETX_XPEC_XPU_HOLD_PC_OFS ;
 int RPU_HOLD_PC ;
 int TPU_HOLD_PC ;
 int XPU_HOLD_PC ;
 int writel (int ,scalar_t__) ;

int xc_stop(struct xc *x)
{
 writel(RPU_HOLD_PC, x->xmac_base + NETX_XMAC_RPU_HOLD_PC_OFS);
 writel(TPU_HOLD_PC, x->xmac_base + NETX_XMAC_TPU_HOLD_PC_OFS);
 writel(XPU_HOLD_PC, x->xpec_base + NETX_XPEC_XPU_HOLD_PC_OFS);
 return 0;
}
