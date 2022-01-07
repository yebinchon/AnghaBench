
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_control {int id; scalar_t__ value; } ;
struct TYPE_2__ {int id; scalar_t__ minimum; scalar_t__ maximum; int name; } ;
struct cx88_ctrl {int mask; int off; int shift; int reg; scalar_t__ sreg; TYPE_1__ v; } ;
struct cx88_core {int tvnorm; } ;


 int CX8800_CTLS ;
 int EINVAL ;




 int V4L2_STD_SECAM ;
 struct cx88_ctrl* cx8800_ctls ;
 int cx_andor (int ,int,int) ;
 int cx_sandor (scalar_t__,int ,int,int) ;
 int dprintk (int,char*,int,int ,int,int ,int,int,char*) ;
 scalar_t__ unlikely (int) ;

int cx88_set_control(struct cx88_core *core, struct v4l2_control *ctl)
{
 struct cx88_ctrl *c = ((void*)0);
 u32 value,mask;
 int i;

 for (i = 0; i < CX8800_CTLS; i++) {
  if (cx8800_ctls[i].v.id == ctl->id) {
   c = &cx8800_ctls[i];
  }
 }
 if (unlikely(((void*)0) == c))
  return -EINVAL;

 if (ctl->value < c->v.minimum)
  ctl->value = c->v.minimum;
 if (ctl->value > c->v.maximum)
  ctl->value = c->v.maximum;
 mask=c->mask;
 switch (ctl->id) {
 case 131:
  value = (ctl->value < 0x40) ? (0x7f - ctl->value) : (ctl->value - 0x40);
  break;
 case 130:
  value = 0x3f - (ctl->value & 0x3f);
  break;
 case 128:


  value = ((ctl->value - c->off) << c->shift) & c->mask;

  if (core->tvnorm & V4L2_STD_SECAM) {

   value=value<<8|value;
  } else {

   value=(value*0x5a)/0x7f<<8|value;
  }
  mask=0xffff;
  break;
 case 129:

  value = ((ctl->value - c->off) << c->shift) & c->mask;
  if (core->tvnorm & V4L2_STD_SECAM && value)
   return -EINVAL;
  break;
 default:
  value = ((ctl->value - c->off) << c->shift) & c->mask;
  break;
 }
 dprintk(1,"set_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\n",
    ctl->id, c->v.name, ctl->value, c->reg, value,
    mask, c->sreg ? " [shadowed]" : "");
 if (c->sreg) {
  cx_sandor(c->sreg, c->reg, mask, value);
 } else {
  cx_andor(c->reg, mask, value);
 }
 return 0;
}
