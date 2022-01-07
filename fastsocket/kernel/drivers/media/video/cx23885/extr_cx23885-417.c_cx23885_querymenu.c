
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct cx23885_dev {int mpeg_params; } ;


 int cx2341x_ctrl_get_menu (int *,int ) ;
 int cx23885_queryctrl (struct cx23885_dev*,struct v4l2_queryctrl*) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,struct v4l2_queryctrl*,int ) ;

__attribute__((used)) static int cx23885_querymenu(struct cx23885_dev *dev,
 struct v4l2_querymenu *qmenu)
{
 struct v4l2_queryctrl qctrl;

 qctrl.id = qmenu->id;
 cx23885_queryctrl(dev, &qctrl);
 return v4l2_ctrl_query_menu(qmenu, &qctrl,
  cx2341x_ctrl_get_menu(&dev->mpeg_params, qmenu->id));
}
