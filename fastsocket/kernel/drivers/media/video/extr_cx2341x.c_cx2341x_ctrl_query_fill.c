
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; int name; int * reserved; void* default_value; void* step; void* maximum; void* minimum; int flags; int type; } ;
typedef void* s32 ;
 int cx2341x_ctrl_fill (int,char const**,int *,void**,void**,void**,void**,int *) ;
 int strlcpy (int ,char const*,int) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,void*,void*,void*,void*) ;

__attribute__((used)) static int cx2341x_ctrl_query_fill(struct v4l2_queryctrl *qctrl,
       s32 min, s32 max, s32 step, s32 def)
{
 const char *name;

 switch (qctrl->id) {

 case 130:
 case 131:
 case 133:
 case 136:
 case 128:
 case 129:
 case 132:
 case 134:
 case 135:
 case 137:
 case 138:
 case 139:
  cx2341x_ctrl_fill(qctrl->id, &name, &qctrl->type,
    &min, &max, &step, &def, &qctrl->flags);
  qctrl->minimum = min;
  qctrl->maximum = max;
  qctrl->step = step;
  qctrl->default_value = def;
  qctrl->reserved[0] = qctrl->reserved[1] = 0;
  strlcpy(qctrl->name, name, sizeof(qctrl->name));
  return 0;

 default:
  return v4l2_ctrl_query_fill(qctrl, min, max, step, def);
 }
}
