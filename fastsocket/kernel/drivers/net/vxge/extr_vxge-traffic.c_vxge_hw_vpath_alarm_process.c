
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __vxge_hw_vpath_handle {int vpath; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int VXGE_HW_ERR_INVALID_HANDLE ;
 int VXGE_HW_OK ;
 int __vxge_hw_vpath_alarm_process (int ,int ) ;

enum vxge_hw_status vxge_hw_vpath_alarm_process(
   struct __vxge_hw_vpath_handle *vp,
   u32 skip_alarms)
{
 enum vxge_hw_status status = VXGE_HW_OK;

 if (vp == ((void*)0)) {
  status = VXGE_HW_ERR_INVALID_HANDLE;
  goto exit;
 }

 status = __vxge_hw_vpath_alarm_process(vp->vpath, skip_alarms);
exit:
 return status;
}
