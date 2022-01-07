
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ line; } ;
struct mpsc_port_info {TYPE_2__ port; TYPE_1__* shared_regs; scalar_t__ mirror_regs; } ;
struct TYPE_3__ {int SDMA_INTR_MASK_m; scalar_t__ sdma_intr_base; } ;


 scalar_t__ SDMA_INTR_MASK ;
 int pr_debug (char*,scalar_t__,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u32 mpsc_sdma_intr_mask(struct mpsc_port_info *pi, u32 mask)
{
 u32 old, v;

 pr_debug("mpsc_sdma_intr_mask[%d]: mask: 0x%x\n", pi->port.line, mask);

 old = v = (pi->mirror_regs) ? pi->shared_regs->SDMA_INTR_MASK_m :
  readl(pi->shared_regs->sdma_intr_base + SDMA_INTR_MASK);

 mask &= 0xf;
 if (pi->port.line)
  mask <<= 8;
 v &= ~mask;

 if (pi->mirror_regs)
  pi->shared_regs->SDMA_INTR_MASK_m = v;
 writel(v, pi->shared_regs->sdma_intr_base + SDMA_INTR_MASK);

 if (pi->port.line)
  old >>= 8;
 return old & 0xf;
}
