
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct trust {int dummy; } ;
struct file {int dummy; } ;


 int tr_setfreq (struct trust*,int ) ;
 struct trust* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct trust *tr = video_drvdata(file);

 tr_setfreq(tr, f->frequency);
 return 0;
}
