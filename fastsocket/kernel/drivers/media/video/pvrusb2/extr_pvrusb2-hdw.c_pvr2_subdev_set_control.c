
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; int value; } ;
struct pvr2_hdw {int v4l2_dev; } ;
typedef int ctrl ;


 int PVR2_TRACE_CHIPS ;
 int core ;
 int memset (struct v4l2_control*,int ,int) ;
 int pvr2_trace (int ,char*,char const*,int) ;
 int s_ctrl ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static void pvr2_subdev_set_control(struct pvr2_hdw *hdw, int id,
        const char *name, int val)
{
 struct v4l2_control ctrl;
 pvr2_trace(PVR2_TRACE_CHIPS, "subdev v4l2 %s=%d", name, val);
 memset(&ctrl, 0, sizeof(ctrl));
 ctrl.id = id;
 ctrl.value = val;
 v4l2_device_call_all(&hdw->v4l2_dev, 0, core, s_ctrl, &ctrl);
}
