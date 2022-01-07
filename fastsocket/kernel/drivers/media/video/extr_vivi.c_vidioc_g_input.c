
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {unsigned int input; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct vivi_fh *fh = priv;
 struct vivi_dev *dev = fh->dev;

 *i = dev->input;

 return (0);
}
