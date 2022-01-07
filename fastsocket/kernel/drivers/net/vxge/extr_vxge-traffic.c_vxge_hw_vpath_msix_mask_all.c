
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct __vxge_hw_vpath_handle {TYPE_3__* vpath; } ;
struct TYPE_6__ {TYPE_2__* hldev; int vp_id; } ;
struct TYPE_5__ {TYPE_1__* common_reg; } ;
struct TYPE_4__ {int set_msix_mask_all_vect; } ;


 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 scalar_t__ vxge_bVALn (int ,int ,int) ;
 int vxge_mBIT (int ) ;

void
vxge_hw_vpath_msix_mask_all(struct __vxge_hw_vpath_handle *vp)
{

 __vxge_hw_pio_mem_write32_upper(
  (u32)vxge_bVALn(vxge_mBIT(vp->vpath->vp_id), 0, 32),
  &vp->vpath->hldev->common_reg->set_msix_mask_all_vect);

 return;
}
