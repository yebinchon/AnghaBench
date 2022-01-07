
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct typhoon {int curfreq; } ;
struct file {int dummy; } ;


 int typhoon_setfreq (struct typhoon*,int ) ;
 struct typhoon* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct typhoon *dev = video_drvdata(file);

 dev->curfreq = f->frequency;
 typhoon_setfreq(dev, dev->curfreq);
 return 0;
}
