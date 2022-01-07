
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwirq; } ;


 scalar_t__ MV64x60_GPP_INTR_MASK ;
 int MV64x60_LEVEL2_MASK ;
 int in_le32 (scalar_t__) ;
 TYPE_1__* irq_map ;
 int mv64x60_cached_gpp_mask ;
 scalar_t__ mv64x60_gpp_reg_base ;
 int mv64x60_lock ;
 int out_le32 (scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void mv64x60_mask_gpp(unsigned int virq)
{
 int level2 = irq_map[virq].hwirq & MV64x60_LEVEL2_MASK;
 unsigned long flags;

 spin_lock_irqsave(&mv64x60_lock, flags);
 mv64x60_cached_gpp_mask &= ~(1 << level2);
 out_le32(mv64x60_gpp_reg_base + MV64x60_GPP_INTR_MASK,
   mv64x60_cached_gpp_mask);
 spin_unlock_irqrestore(&mv64x60_lock, flags);
 (void)in_le32(mv64x60_gpp_reg_base + MV64x60_GPP_INTR_MASK);
}
