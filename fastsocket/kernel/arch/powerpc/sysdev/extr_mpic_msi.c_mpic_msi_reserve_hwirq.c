
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bitmap; } ;
struct mpic {TYPE_1__ msi_bitmap; } ;
typedef int irq_hw_number_t ;


 int msi_bitmap_reserve_hwirq (TYPE_1__*,int ) ;

void mpic_msi_reserve_hwirq(struct mpic *mpic, irq_hw_number_t hwirq)
{

 if (!mpic->msi_bitmap.bitmap)
  return;

 msi_bitmap_reserve_hwirq(&mpic->msi_bitmap, hwirq);
}
