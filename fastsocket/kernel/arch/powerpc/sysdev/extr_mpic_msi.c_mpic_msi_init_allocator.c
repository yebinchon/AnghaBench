
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpic {int flags; int msi_bitmap; TYPE_1__* irqhost; int irq_count; } ;
struct TYPE_2__ {int of_node; } ;


 int MPIC_U3_HT_IRQS ;
 int mpic_msi_reserve_u3_hwirqs (struct mpic*) ;
 int msi_bitmap_alloc (int *,int ,int ) ;
 int msi_bitmap_free (int *) ;
 int msi_bitmap_reserve_dt_hwirqs (int *) ;

int mpic_msi_init_allocator(struct mpic *mpic)
{
 int rc;

 rc = msi_bitmap_alloc(&mpic->msi_bitmap, mpic->irq_count,
         mpic->irqhost->of_node);
 if (rc)
  return rc;

 rc = msi_bitmap_reserve_dt_hwirqs(&mpic->msi_bitmap);
 if (rc > 0) {
  if (mpic->flags & MPIC_U3_HT_IRQS)
   rc = mpic_msi_reserve_u3_hwirqs(mpic);

  if (rc) {
   msi_bitmap_free(&mpic->msi_bitmap);
   return rc;
  }
 }

 return 0;
}
