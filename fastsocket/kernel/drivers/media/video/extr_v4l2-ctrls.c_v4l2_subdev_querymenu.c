
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int ctrl_handler; } ;
struct v4l2_querymenu {int dummy; } ;


 int v4l2_querymenu (int ,struct v4l2_querymenu*) ;

int v4l2_subdev_querymenu(struct v4l2_subdev *sd, struct v4l2_querymenu *qm)
{
 return v4l2_querymenu(sd->ctrl_handler, qm);
}
