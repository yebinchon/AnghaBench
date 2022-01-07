
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {struct em28xx_fh* priv_data; } ;
struct v4l2_frequency {int type; int frequency; } ;
struct em28xx_fh {scalar_t__ radio; struct em28xx* dev; } ;
struct em28xx {int width; int height; int v4l2_dev; int ctl_freq; TYPE_1__* format; } ;
typedef int f ;
struct TYPE_2__ {int depth; } ;


 unsigned int EM28XX_DEF_BUF ;
 unsigned int EM28XX_MIN_BUF ;
 int V4L2_TUNER_ANALOG_TV ;
 int V4L2_TUNER_RADIO ;
 int memset (struct v4l2_frequency*,int ,int) ;
 int s_frequency ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ,struct v4l2_frequency*) ;

__attribute__((used)) static int
buffer_setup(struct videobuf_queue *vq, unsigned int *count, unsigned int *size)
{
 struct em28xx_fh *fh = vq->priv_data;
 struct em28xx *dev = fh->dev;
 struct v4l2_frequency f;

 *size = (fh->dev->width * fh->dev->height * dev->format->depth + 7)
  >> 3;

 if (0 == *count)
  *count = EM28XX_DEF_BUF;

 if (*count < EM28XX_MIN_BUF)
  *count = EM28XX_MIN_BUF;


 memset(&f, 0, sizeof(f));
 f.frequency = dev->ctl_freq;
 f.type = fh->radio ? V4L2_TUNER_RADIO : V4L2_TUNER_ANALOG_TV;

 v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_frequency, &f);

 return 0;
}
