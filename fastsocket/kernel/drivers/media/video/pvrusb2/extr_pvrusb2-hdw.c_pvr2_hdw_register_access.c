
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct v4l2_dbg_match {int dummy; } ;
struct v4l2_dbg_register {void* val; void* reg; struct v4l2_dbg_match match; } ;
struct pvr2_hdw {int v4l2_dev; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOSYS ;
 int EPERM ;
 int capable (int ) ;
 int core ;
 int g_register ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_dbg_register*) ;

int pvr2_hdw_register_access(struct pvr2_hdw *hdw,
        struct v4l2_dbg_match *match, u64 reg_id,
        int setFl, u64 *val_ptr)
{
 return -ENOSYS;

}
