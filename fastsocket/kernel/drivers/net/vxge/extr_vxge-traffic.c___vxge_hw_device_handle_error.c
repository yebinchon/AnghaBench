
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* crit_err ) (struct __vxge_hw_device*,int,int ) ;} ;
struct __vxge_hw_device {TYPE_1__ uld_callbacks; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
typedef enum vxge_hw_event { ____Placeholder_vxge_hw_event } vxge_hw_event ;
 int VXGE_HW_OK ;
 int stub1 (struct __vxge_hw_device*,int,int ) ;
 int vxge_assert (int ) ;

enum vxge_hw_status
__vxge_hw_device_handle_error(
  struct __vxge_hw_device *hldev,
  u32 vp_id,
  enum vxge_hw_event type)
{
 switch (type) {
 case 129:
  break;
 case 133:
 case 134:
 case 138:
 case 137:
  goto out;
 case 142:
  goto out;
 case 140:
 case 136:
  goto out;
 case 139:
 case 128:
 case 141:
 case 132:
  break;
 case 130:
 case 135:
  goto out;
 case 131:
  break;
 default:
  vxge_assert(0);
  goto out;
 }


 if (hldev->uld_callbacks.crit_err)
  hldev->uld_callbacks.crit_err(
   (struct __vxge_hw_device *)hldev,
   type, vp_id);
out:

 return VXGE_HW_OK;
}
