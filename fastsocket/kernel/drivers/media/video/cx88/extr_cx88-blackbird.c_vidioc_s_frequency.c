
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {int dummy; } ;
struct file {int dummy; } ;
struct cx88_core {int dummy; } ;
struct TYPE_2__ {int field; } ;
struct cx8802_fh {TYPE_1__ mpegq; struct cx8802_dev* dev; } ;
struct cx8802_dev {int height; int width; struct cx88_core* core; scalar_t__ mpeg_active; } ;


 int blackbird_initialize_codec (struct cx8802_dev*) ;
 int blackbird_stop_codec (struct cx8802_dev*) ;
 int cx88_set_freq (struct cx88_core*,struct v4l2_frequency*) ;
 int cx88_set_scale (struct cx88_core*,int ,int ,int ) ;

__attribute__((used)) static int vidioc_s_frequency (struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct cx8802_fh *fh = priv;
 struct cx8802_dev *dev = fh->dev;
 struct cx88_core *core = dev->core;

 if (dev->mpeg_active)
  blackbird_stop_codec(dev);

 cx88_set_freq (core,f);
 blackbird_initialize_codec(dev);
 cx88_set_scale(dev->core, dev->width, dev->height,
   fh->mpegq.field);
 return 0;
}
