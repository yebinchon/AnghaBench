
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct em28xx_fh {struct em28xx* dev; } ;
struct em28xx {unsigned int ctl_input; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EINVAL ;
 TYPE_1__* INPUT (unsigned int) ;
 unsigned int MAX_EM28XX_INPUT ;
 int check_dev (struct em28xx*) ;
 int video_mux (struct em28xx*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct em28xx_fh *fh = priv;
 struct em28xx *dev = fh->dev;
 int rc;

 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (i >= MAX_EM28XX_INPUT)
  return -EINVAL;
 if (0 == INPUT(i)->type)
  return -EINVAL;

 dev->ctl_input = i;

 video_mux(dev, dev->ctl_input);
 return 0;
}
