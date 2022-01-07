
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct rtrack {int dummy; } ;
struct file {int dummy; } ;


 int rt_setfreq (struct rtrack*,int ) ;
 struct rtrack* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct rtrack *rt = video_drvdata(file);

 rt_setfreq(rt, f->frequency);
 return 0;
}
