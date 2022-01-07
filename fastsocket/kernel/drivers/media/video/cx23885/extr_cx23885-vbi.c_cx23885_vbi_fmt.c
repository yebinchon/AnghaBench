
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sampling_rate; int* start; } ;
struct TYPE_4__ {TYPE_1__ vbi; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cx23885_fh {struct cx23885_dev* dev; } ;
struct cx23885_dev {int tvnorm; } ;


 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;

int cx23885_vbi_fmt(struct file *file, void *priv,
 struct v4l2_format *f)
{
 struct cx23885_fh *fh = priv;
 struct cx23885_dev *dev = fh->dev;

 if (dev->tvnorm & V4L2_STD_525_60) {

  f->fmt.vbi.sampling_rate = 28636363;
  f->fmt.vbi.start[0] = 10;
  f->fmt.vbi.start[1] = 273;

 } else if (dev->tvnorm & V4L2_STD_625_50) {

  f->fmt.vbi.sampling_rate = 35468950;
  f->fmt.vbi.start[0] = 7 - 1;
  f->fmt.vbi.start[1] = 319 - 1;
 }
 return 0;
}
