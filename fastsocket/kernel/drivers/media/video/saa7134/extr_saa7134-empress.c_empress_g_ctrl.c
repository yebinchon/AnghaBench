
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct saa7134_dev {int dummy; } ;
struct file {struct saa7134_dev* private_data; } ;


 int saa7134_g_ctrl_internal (struct saa7134_dev*,int *,struct v4l2_control*) ;

__attribute__((used)) static int empress_g_ctrl(struct file *file, void *priv,
     struct v4l2_control *c)
{
 struct saa7134_dev *dev = file->private_data;

 return saa7134_g_ctrl_internal(dev, ((void*)0), c);
}
