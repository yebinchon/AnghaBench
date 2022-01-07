
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ioctl_ops {int vidioc_g_fmt_type_private; int vidioc_g_fmt_sliced_vbi_out; int vidioc_g_fmt_sliced_vbi_cap; int vidioc_g_fmt_vbi_out; int vidioc_g_fmt_vbi_cap; int vidioc_g_fmt_vid_out_overlay; int vidioc_g_fmt_vid_out; int vidioc_g_fmt_vid_overlay; int vidioc_g_fmt_vid_cap; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EINVAL ;
__attribute__((used)) static int check_fmt(const struct v4l2_ioctl_ops *ops, enum v4l2_buf_type type)
{
 if (ops == ((void*)0))
  return -EINVAL;

 switch (type) {
 case 131:
  if (ops->vidioc_g_fmt_vid_cap)
   return 0;
  break;
 case 128:
  if (ops->vidioc_g_fmt_vid_overlay)
   return 0;
  break;
 case 130:
  if (ops->vidioc_g_fmt_vid_out)
   return 0;
  break;
 case 129:
  if (ops->vidioc_g_fmt_vid_out_overlay)
   return 0;
  break;
 case 133:
  if (ops->vidioc_g_fmt_vbi_cap)
   return 0;
  break;
 case 132:
  if (ops->vidioc_g_fmt_vbi_out)
   return 0;
  break;
 case 135:
  if (ops->vidioc_g_fmt_sliced_vbi_cap)
   return 0;
  break;
 case 134:
  if (ops->vidioc_g_fmt_sliced_vbi_out)
   return 0;
  break;
 case 136:
  if (ops->vidioc_g_fmt_type_private)
   return 0;
  break;
 }
 return -EINVAL;
}
