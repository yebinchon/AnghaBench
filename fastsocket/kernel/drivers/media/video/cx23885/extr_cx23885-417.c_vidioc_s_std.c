
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {struct cx23885_fh* private_data; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct TYPE_3__ {int id; } ;
struct cx23885_dev {TYPE_1__ encodernorm; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* cx23885_tvnorms ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct cx23885_fh *fh = file->private_data;
 struct cx23885_dev *dev = fh->dev;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(cx23885_tvnorms); i++)
  if (*id & cx23885_tvnorms[i].id)
   break;
 if (i == ARRAY_SIZE(cx23885_tvnorms))
  return -EINVAL;
 dev->encodernorm = cx23885_tvnorms[i];
 return 0;
}
