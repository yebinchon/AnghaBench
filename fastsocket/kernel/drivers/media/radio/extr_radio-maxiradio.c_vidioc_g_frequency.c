
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; } ;
struct maxiradio {int freq; } ;
struct file {int dummy; } ;


 int V4L2_TUNER_RADIO ;
 int dprintk (struct maxiradio*,int,char*,int,int) ;
 struct maxiradio* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_frequency(struct file *file, void *priv,
          struct v4l2_frequency *f)
{
 struct maxiradio *dev = video_drvdata(file);

 f->type = V4L2_TUNER_RADIO;
 f->frequency = dev->freq;

 dprintk(dev, 4, "radio freq is %d.%02d MHz",
    f->frequency / 16000,
    f->frequency % 16000 * 100 / 16000);

 return 0;
}
