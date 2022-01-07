
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int id; } ;
struct v4l2_queryctrl {int id; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int params; } ;


 int cx18_queryctrl (struct file*,void*,struct v4l2_queryctrl*) ;
 int cx2341x_ctrl_get_menu (int *,int ) ;
 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,struct v4l2_queryctrl*,int ) ;

int cx18_querymenu(struct file *file, void *fh, struct v4l2_querymenu *qmenu)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;
 struct v4l2_queryctrl qctrl;

 qctrl.id = qmenu->id;
 cx18_queryctrl(file, fh, &qctrl);
 return v4l2_ctrl_query_menu(qmenu, &qctrl,
   cx2341x_ctrl_get_menu(&cx->params, qmenu->id));
}
