
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct file {int dummy; } ;
struct cx8802_fh {struct cx8802_dev* dev; } ;
struct cx8802_dev {int params; } ;


 int blackbird_queryctrl (struct cx8802_dev*,struct v4l2_queryctrl*) ;
 int cx2341x_ctrl_get_menu (int *,int ) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,struct v4l2_queryctrl*,int ) ;

__attribute__((used)) static int vidioc_querymenu (struct file *file, void *priv,
    struct v4l2_querymenu *qmenu)
{
 struct cx8802_dev *dev = ((struct cx8802_fh *)priv)->dev;
 struct v4l2_queryctrl qctrl;

 qctrl.id = qmenu->id;
 blackbird_queryctrl(dev, &qctrl);
 return v4l2_ctrl_query_menu(qmenu, &qctrl,
   cx2341x_ctrl_get_menu(&dev->params, qmenu->id));
}
