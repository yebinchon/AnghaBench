
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct cx231xx {int norm; scalar_t__ mode_tv; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ CX231XX_VMUX_CABLE ;
 scalar_t__ CX231XX_VMUX_TELEVISION ;
 int EINVAL ;
 TYPE_1__* INPUT (unsigned int) ;
 unsigned int MAX_CX231XX_INPUT ;
 int call_all (struct cx231xx*,int ,int ,int ) ;
 int check_dev (struct cx231xx*) ;
 int core ;
 int s_std ;
 int video_mux (struct cx231xx*,unsigned int) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct cx231xx_fh *fh = priv;
 struct cx231xx *dev = fh->dev;
 int rc;

 dev->mode_tv = 0;
 rc = check_dev(dev);
 if (rc < 0)
  return rc;

 if (i >= MAX_CX231XX_INPUT)
  return -EINVAL;
 if (0 == INPUT(i)->type)
  return -EINVAL;

 video_mux(dev, i);

 if (INPUT(i)->type == CX231XX_VMUX_TELEVISION ||
     INPUT(i)->type == CX231XX_VMUX_CABLE) {



  call_all(dev, core, s_std, dev->norm);
 }

 return 0;
}
