
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct terratec {int dummy; } ;
struct file {int dummy; } ;


 int tt_setfreq (struct terratec*,int ) ;
 struct terratec* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct terratec *tt = video_drvdata(file);

 tt_setfreq(tt, f->frequency);
 return 0;
}
