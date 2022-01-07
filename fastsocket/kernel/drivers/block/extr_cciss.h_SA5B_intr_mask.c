
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int interrupts_enabled; scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 int SA5B_INTR_OFF ;
 scalar_t__ SA5_REPLY_INTR_MASK_OFFSET ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void SA5B_intr_mask(ctlr_info_t *h, unsigned long val)
{
        if (val)
        {
  h->interrupts_enabled = 1;
                writel(0, h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
        } else
        {
  h->interrupts_enabled = 0;
                writel( SA5B_INTR_OFF,
                        h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
        }
}
