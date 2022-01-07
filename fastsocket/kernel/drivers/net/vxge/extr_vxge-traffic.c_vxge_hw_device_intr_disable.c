
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct __vxge_hw_device {int vpaths_deployed; int * virtual_paths; TYPE_1__* common_reg; } ;
struct TYPE_2__ {int tim_int_mask1; int tim_int_mask0; } ;


 int VXGE_HW_DEFAULT_32 ;
 int VXGE_HW_INTR_MASK_ALL ;
 size_t VXGE_HW_MAX_VIRTUAL_PATHS ;
 int VXGE_HW_VIRTUAL_PATH_HANDLE (int *) ;
 int __vxge_hw_pio_mem_write32_upper (int ,int *) ;
 int vxge_hw_device_mask_all (struct __vxge_hw_device*) ;
 int vxge_hw_vpath_intr_disable (int ) ;
 int vxge_mBIT (size_t) ;
 int writeq (int ,int *) ;

void vxge_hw_device_intr_disable(struct __vxge_hw_device *hldev)
{
 u32 i;

 vxge_hw_device_mask_all(hldev);


 writeq(VXGE_HW_INTR_MASK_ALL, &hldev->common_reg->tim_int_mask0);
 __vxge_hw_pio_mem_write32_upper(VXGE_HW_DEFAULT_32,
  &hldev->common_reg->tim_int_mask1);

 for (i = 0; i < VXGE_HW_MAX_VIRTUAL_PATHS; i++) {

  if (!(hldev->vpaths_deployed & vxge_mBIT(i)))
   continue;

  vxge_hw_vpath_intr_disable(
   VXGE_HW_VIRTUAL_PATH_HANDLE(&hldev->virtual_paths[i]));
 }

 return;
}
