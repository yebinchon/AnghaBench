
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct __vxge_hw_vpath_handle {TYPE_2__* vpath; } ;
struct TYPE_6__ {scalar_t__ intr_mode; } ;
struct __vxge_hw_device {TYPE_1__* common_reg; TYPE_3__ config; } ;
struct TYPE_5__ {struct __vxge_hw_device* hldev; } ;
struct TYPE_4__ {int * clear_msix_mask_vect; int * clr_msix_one_shot_vec; } ;


 scalar_t__ VXGE_HW_INTR_MODE_MSIX_ONE_SHOT ;
 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 scalar_t__ vxge_bVALn (int ,int ,int) ;
 int vxge_mBIT (int) ;

void
vxge_hw_vpath_msix_clear(struct __vxge_hw_vpath_handle *vp, int msix_id)
{
 struct __vxge_hw_device *hldev = vp->vpath->hldev;
 if (hldev->config.intr_mode ==
   VXGE_HW_INTR_MODE_MSIX_ONE_SHOT) {
  __vxge_hw_pio_mem_write32_upper(
   (u32)vxge_bVALn(vxge_mBIT(msix_id >> 2), 0, 32),
    &hldev->common_reg->
     clr_msix_one_shot_vec[msix_id%4]);
 } else {
  __vxge_hw_pio_mem_write32_upper(
   (u32)vxge_bVALn(vxge_mBIT(msix_id >> 2), 0, 32),
    &hldev->common_reg->
     clear_msix_mask_vect[msix_id%4]);
 }

 return;
}
