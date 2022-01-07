
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __vxge_hw_device {int* tim_int_mask0; int* tim_int_mask1; TYPE_1__* common_reg; } ;
struct TYPE_2__ {int tim_int_status1; int tim_int_status0; } ;


 size_t VXGE_HW_VPATH_INTR_RX ;
 size_t VXGE_HW_VPATH_INTR_TX ;
 int __vxge_hw_pio_mem_write32_upper (int,int *) ;
 int writeq (int,int *) ;

void vxge_hw_device_clear_tx_rx(struct __vxge_hw_device *hldev)
{

 if ((hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_TX] != 0) ||
    (hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_RX] != 0)) {
  writeq((hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_TX] |
     hldev->tim_int_mask0[VXGE_HW_VPATH_INTR_RX]),
    &hldev->common_reg->tim_int_status0);
 }

 if ((hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_TX] != 0) ||
    (hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_RX] != 0)) {
  __vxge_hw_pio_mem_write32_upper(
    (hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_TX] |
     hldev->tim_int_mask1[VXGE_HW_VPATH_INTR_RX]),
    &hldev->common_reg->tim_int_status1);
 }

 return;
}
