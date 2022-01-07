
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct cx231xx {int mpeg_params; } ;


 int cx231xx_queryctrl (struct cx231xx*,struct v4l2_queryctrl*) ;
 int cx2341x_ctrl_get_menu (int *,int ) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,struct v4l2_queryctrl*,int ) ;

__attribute__((used)) static int cx231xx_querymenu(struct cx231xx *dev,
 struct v4l2_querymenu *qmenu)
{
 struct v4l2_queryctrl qctrl;

 qctrl.id = qmenu->id;
 cx231xx_queryctrl(dev, &qctrl);
 return v4l2_ctrl_query_menu(qmenu, &qctrl,
  cx2341x_ctrl_get_menu(&dev->mpeg_params, qmenu->id));
}
