
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pxa930_rotary {scalar_t__ mmio_base; } ;


 scalar_t__ SBCR ;
 int SBCR_ERSB ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void clear_sbcr(struct pxa930_rotary *r)
{
 uint32_t sbcr = __raw_readl(r->mmio_base + SBCR);

 __raw_writel(sbcr | SBCR_ERSB, r->mmio_base + SBCR);
 __raw_writel(sbcr & ~SBCR_ERSB, r->mmio_base + SBCR);
}
