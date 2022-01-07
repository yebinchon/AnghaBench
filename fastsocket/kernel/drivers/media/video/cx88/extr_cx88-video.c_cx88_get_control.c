
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_control {int id; int value; } ;
struct TYPE_2__ {int id; int name; } ;
struct cx88_ctrl {int off; int shift; int mask; scalar_t__ sreg; int reg; TYPE_1__ v; } ;
struct cx88_core {int dummy; } ;


 int CX8800_CTLS ;
 int EINVAL ;


 struct cx88_ctrl* cx8800_ctls ;
 int cx_read (int ) ;
 int cx_sread (scalar_t__) ;
 int dprintk (int,char*,int,int ,int,int ,int,int,char*) ;
 scalar_t__ unlikely (int) ;

int cx88_get_control (struct cx88_core *core, struct v4l2_control *ctl)
{
 struct cx88_ctrl *c = ((void*)0);
 u32 value;
 int i;

 for (i = 0; i < CX8800_CTLS; i++)
  if (cx8800_ctls[i].v.id == ctl->id)
   c = &cx8800_ctls[i];
 if (unlikely(((void*)0) == c))
  return -EINVAL;

 value = c->sreg ? cx_sread(c->sreg) : cx_read(c->reg);
 switch (ctl->id) {
 case 129:
  ctl->value = ((value & 0x7f) < 0x40) ? ((value & 0x7f) + 0x40)
     : (0x7f - (value & 0x7f));
  break;
 case 128:
  ctl->value = 0x3f - (value & 0x3f);
  break;
 default:
  ctl->value = ((value + (c->off << c->shift)) & c->mask) >> c->shift;
  break;
 }
 dprintk(1,"get_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\n",
    ctl->id, c->v.name, ctl->value, c->reg,
    value,c->mask, c->sreg ? " [shadowed]" : "");
 return 0;
}
