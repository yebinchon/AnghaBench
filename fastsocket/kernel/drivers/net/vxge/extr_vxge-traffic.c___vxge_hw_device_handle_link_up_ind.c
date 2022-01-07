
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* link_up ) (struct __vxge_hw_device*) ;} ;
struct __vxge_hw_device {scalar_t__ link_state; TYPE_1__ uld_callbacks; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 scalar_t__ VXGE_HW_LINK_UP ;
 int VXGE_HW_OK ;
 int stub1 (struct __vxge_hw_device*) ;

enum vxge_hw_status
__vxge_hw_device_handle_link_up_ind(struct __vxge_hw_device *hldev)
{



 if (hldev->link_state == VXGE_HW_LINK_UP)
  goto exit;

 hldev->link_state = VXGE_HW_LINK_UP;


 if (hldev->uld_callbacks.link_up)
  hldev->uld_callbacks.link_up(hldev);
exit:
 return VXGE_HW_OK;
}
