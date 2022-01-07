
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int id; } ;


 int NUM_CONTROLS ;
 struct v4l2_queryctrl* controls ;

__attribute__((used)) static struct v4l2_queryctrl* ctrl_by_id(int id)
{
 int i;

 for (i = 0; i < NUM_CONTROLS; i++)
  if (controls[i].id == id)
   return controls+i;
 return ((void*)0);
}
