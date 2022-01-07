
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_querymenu {int dummy; } ;
struct file {int dummy; } ;


 int v4l2_ctrl_query_menu (struct v4l2_querymenu*,int *,int *) ;

__attribute__((used)) static int tlg_fm_vidioc_querymenu(struct file *file, void *fh,
    struct v4l2_querymenu *qmenu)
{
 return v4l2_ctrl_query_menu(qmenu, ((void*)0), ((void*)0));
}
