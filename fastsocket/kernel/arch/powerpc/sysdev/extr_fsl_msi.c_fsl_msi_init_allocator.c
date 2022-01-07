
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_msi {int bitmap; TYPE_1__* irqhost; } ;
struct TYPE_2__ {int of_node; } ;


 int NR_MSI_IRQS ;
 int msi_bitmap_alloc (int *,int ,int ) ;
 int msi_bitmap_free (int *) ;
 int msi_bitmap_reserve_dt_hwirqs (int *) ;

__attribute__((used)) static int fsl_msi_init_allocator(struct fsl_msi *msi_data)
{
 int rc;

 rc = msi_bitmap_alloc(&msi_data->bitmap, NR_MSI_IRQS,
         msi_data->irqhost->of_node);
 if (rc)
  return rc;

 rc = msi_bitmap_reserve_dt_hwirqs(&msi_data->bitmap);
 if (rc < 0) {
  msi_bitmap_free(&msi_data->bitmap);
  return rc;
 }

 return 0;
}
