
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;
typedef enum v4l2_ctrl_type { ____Placeholder_v4l2_ctrl_type } v4l2_ctrl_type ;
 int V4L2_CTRL_FLAG_READ_ONLY ;
 int V4L2_CTRL_FLAG_SLIDER ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_CTRL_TYPE_BOOLEAN ;
 int V4L2_CTRL_TYPE_INTEGER ;
 int V4L2_CTRL_TYPE_MENU ;
 char* cx2341x_get_name (int) ;

__attribute__((used)) static void cx2341x_ctrl_fill(u32 id, const char **name, enum v4l2_ctrl_type *type,
      s32 *min, s32 *max, s32 *step, s32 *def, u32 *flags)
{
 *name = cx2341x_get_name(id);
 *flags = 0;

 switch (id) {
 case 131:
 case 134:
 case 137:
 case 129:
 case 133:
  *type = V4L2_CTRL_TYPE_MENU;
  *min = 0;
  *step = 0;
  break;
 case 140:
  *type = V4L2_CTRL_TYPE_BOOLEAN;
  *min = 0;
  *max = *step = 1;
  break;
 default:
  *type = V4L2_CTRL_TYPE_INTEGER;
  break;
 }
 switch (id) {
 case 131:
 case 129:
 case 133:
  *flags |= V4L2_CTRL_FLAG_UPDATE;
  break;
 case 132:
 case 130:
 case 135:
 case 136:
 case 138:
 case 139:
  *flags |= V4L2_CTRL_FLAG_SLIDER;
  break;
 case 128:
  *flags |= V4L2_CTRL_FLAG_READ_ONLY;
  break;
 }
}
