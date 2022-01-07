
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;


 int ARRAY_SIZE (struct v4l2_queryctrl const*) ;
 struct v4l2_queryctrl const* bttv_ctls ;

__attribute__((used)) static const struct v4l2_queryctrl *ctrl_by_id(int id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(bttv_ctls); i++)
  if (bttv_ctls[i].id == id)
   return bttv_ctls+i;

 return ((void*)0);
}
