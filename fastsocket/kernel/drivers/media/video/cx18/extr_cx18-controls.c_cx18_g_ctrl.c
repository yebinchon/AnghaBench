
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int id; } ;
struct cx18 {int sd_av; } ;


 int CX18_DEBUG_IOCTL (char*,int) ;
 int EINVAL ;
 int core ;
 int g_ctrl ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_control*) ;

__attribute__((used)) static int cx18_g_ctrl(struct cx18 *cx, struct v4l2_control *vctrl)
{
 switch (vctrl->id) {

 case 131:
 case 129:
 case 128:
 case 130:
  return v4l2_subdev_call(cx->sd_av, core, g_ctrl, vctrl);

 case 132:
 case 134:
 case 137:
 case 136:
 case 133:
 case 135:
  return v4l2_subdev_call(cx->sd_av, core, g_ctrl, vctrl);

 default:
  CX18_DEBUG_IOCTL("invalid control 0x%x\n", vctrl->id);
  return -EINVAL;
 }
 return 0;
}
