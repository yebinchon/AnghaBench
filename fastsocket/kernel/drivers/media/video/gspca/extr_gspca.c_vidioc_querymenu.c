
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_querymenu {int dummy; } ;
struct gspca_dev {TYPE_1__* sd_desc; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* querymenu ) (struct gspca_dev*,struct v4l2_querymenu*) ;} ;


 int EINVAL ;
 int stub1 (struct gspca_dev*,struct v4l2_querymenu*) ;

__attribute__((used)) static int vidioc_querymenu(struct file *file, void *priv,
       struct v4l2_querymenu *qmenu)
{
 struct gspca_dev *gspca_dev = priv;

 if (!gspca_dev->sd_desc->querymenu)
  return -EINVAL;
 return gspca_dev->sd_desc->querymenu(gspca_dev, qmenu);
}
