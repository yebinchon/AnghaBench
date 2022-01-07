
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 int S42XX_INTR_OFF ;
 scalar_t__ S42XX_REPLY_INTR_MASK_OFFSET ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void smart4_intr_mask(ctlr_info_t *h, unsigned long val)
{
 if (val)
 {
  writel(0, h->vaddr + S42XX_REPLY_INTR_MASK_OFFSET);
 } else
 {
         writel( S42XX_INTR_OFF,
   h->vaddr + S42XX_REPLY_INTR_MASK_OFFSET);
 }
}
