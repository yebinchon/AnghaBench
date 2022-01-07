
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc {scalar_t__ xpec_base; } ;


 scalar_t__ NETX_XPEC_PC_OFS ;
 int writel (int ,scalar_t__) ;

int xc_reset(struct xc *x)
{
 writel(0, x->xpec_base + NETX_XPEC_PC_OFS);
 return 0;
}
