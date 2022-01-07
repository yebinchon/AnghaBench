
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {unsigned int input; } ;
struct file {int dummy; } ;


 int EINVAL ;
 unsigned int NUM_INPUTS ;
 int precalculate_bars (struct vivi_fh*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct vivi_fh *fh = priv;
 struct vivi_dev *dev = fh->dev;

 if (i >= NUM_INPUTS)
  return -EINVAL;

 dev->input = i;
 precalculate_bars(fh);

 return (0);
}
