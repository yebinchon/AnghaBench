
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_queryctrl {int type; int minimum; int maximum; } ;
struct v4l2_control {int id; int value; } ;
struct saa7146_vv {int hflip; int vflip; } ;
struct saa7146_fh {struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct file {int dummy; } ;


 int BCS_CTRL ;
 int DEB_D (char*) ;
 int EBUSY ;
 int EINVAL ;
 int IS_CAPTURE_ACTIVE (void*) ;
 scalar_t__ IS_OVERLAY_ACTIVE (void*) ;
 int MASK_06 ;
 int MASK_22 ;
 int MC2 ;
 struct v4l2_queryctrl* ctrl_by_id (int) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_start_preview (void*) ;
 int saa7146_stop_preview (void*) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static int vidioc_s_ctrl(struct file *file, void *fh, struct v4l2_control *c)
{
 struct saa7146_dev *dev = ((struct saa7146_fh *)fh)->dev;
 struct saa7146_vv *vv = dev->vv_data;
 const struct v4l2_queryctrl *ctrl;

 ctrl = ctrl_by_id(c->id);
 if (((void*)0) == ctrl) {
  DEB_D(("unknown control %d\n", c->id));
  return -EINVAL;
 }

 switch (ctrl->type) {
 case 130:
 case 128:
 case 129:
  if (c->value < ctrl->minimum)
   c->value = ctrl->minimum;
  if (c->value > ctrl->maximum)
   c->value = ctrl->maximum;
  break;
 default:
               ;
 }

 switch (c->id) {
 case 135: {
  u32 value = saa7146_read(dev, BCS_CTRL);
  value &= 0x00ffffff;
  value |= (c->value << 24);
  saa7146_write(dev, BCS_CTRL, value);
  saa7146_write(dev, MC2, MASK_22 | MASK_06);
  break;
 }
 case 134: {
  u32 value = saa7146_read(dev, BCS_CTRL);
  value &= 0xff00ffff;
  value |= (c->value << 16);
  saa7146_write(dev, BCS_CTRL, value);
  saa7146_write(dev, MC2, MASK_22 | MASK_06);
  break;
 }
 case 132: {
  u32 value = saa7146_read(dev, BCS_CTRL);
  value &= 0xffffff00;
  value |= (c->value << 0);
  saa7146_write(dev, BCS_CTRL, value);
  saa7146_write(dev, MC2, MASK_22 | MASK_06);
  break;
 }
 case 133:

  if (IS_CAPTURE_ACTIVE(fh) != 0) {
   DEB_D(("V4L2_CID_HFLIP while active capture.\n"));
   return -EBUSY;
  }
  vv->hflip = c->value;
  break;
 case 131:
  if (IS_CAPTURE_ACTIVE(fh) != 0) {
   DEB_D(("V4L2_CID_VFLIP while active capture.\n"));
   return -EBUSY;
  }
  vv->vflip = c->value;
  break;
 default:
  return -EINVAL;
 }

 if (IS_OVERLAY_ACTIVE(fh) != 0) {
  saa7146_stop_preview(fh);
  saa7146_start_preview(fh);
 }
 return 0;
}
