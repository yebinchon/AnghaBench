
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_queryctrl {scalar_t__ id; } ;
struct file {int dummy; } ;
struct TYPE_4__ {scalar_t__ id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int memcpy (struct v4l2_queryctrl*,TYPE_1__*,int) ;
 TYPE_1__* stk_controls ;

__attribute__((used)) static int stk_vidioc_queryctrl(struct file *filp,
  void *priv, struct v4l2_queryctrl *c)
{
 int i;
 int nbr;
 nbr = ARRAY_SIZE(stk_controls);

 for (i = 0; i < nbr; i++) {
  if (stk_controls[i].id == c->id) {
   memcpy(c, &stk_controls[i],
    sizeof(struct v4l2_queryctrl));
   return 0;
  }
 }
 return -EINVAL;
}
