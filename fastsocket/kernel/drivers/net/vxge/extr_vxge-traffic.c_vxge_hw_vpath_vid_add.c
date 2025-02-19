
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct __vxge_hw_vpath_handle {int dummy; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;


 int VXGE_HW_ERR_INVALID_HANDLE ;
 int VXGE_HW_OK ;
 int VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_ADD_ENTRY ;
 int VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_VID ;
 int VXGE_HW_RTS_ACCESS_STEER_DATA0_VLAN_ID (int ) ;
 int __vxge_hw_vpath_rts_table_set (struct __vxge_hw_vpath_handle*,int ,int ,int ,int ,int ) ;

enum vxge_hw_status
vxge_hw_vpath_vid_add(struct __vxge_hw_vpath_handle *vp, u64 vid)
{
 enum vxge_hw_status status = VXGE_HW_OK;

 if (vp == ((void*)0)) {
  status = VXGE_HW_ERR_INVALID_HANDLE;
  goto exit;
 }

 status = __vxge_hw_vpath_rts_table_set(vp,
   VXGE_HW_RTS_ACCESS_STEER_CTRL_ACTION_ADD_ENTRY,
   VXGE_HW_RTS_ACCESS_STEER_CTRL_DATA_STRUCT_SEL_VID,
   0, VXGE_HW_RTS_ACCESS_STEER_DATA0_VLAN_ID(vid), 0);
exit:
 return status;
}
