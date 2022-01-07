
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int dummy; } ;
struct saa7134_fh {int dev; } ;
struct file {int dummy; } ;


 int saa7134_s_ctrl_internal (int ,struct saa7134_fh*,struct v4l2_control*) ;

__attribute__((used)) static int saa7134_s_ctrl(struct file *file, void *f, struct v4l2_control *c)
{
 struct saa7134_fh *fh = f;

 return saa7134_s_ctrl_internal(fh->dev, fh, c);
}
