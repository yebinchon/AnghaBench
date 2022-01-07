
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {unsigned int id; } ;


 unsigned int CTRLS ;
 struct v4l2_queryctrl const* video_ctrls ;

__attribute__((used)) static const struct v4l2_queryctrl* ctrl_by_id(unsigned int id)
{
 unsigned int i;

 for (i = 0; i < CTRLS; i++)
  if (video_ctrls[i].id == id)
   return video_ctrls+i;
 return ((void*)0);
}
