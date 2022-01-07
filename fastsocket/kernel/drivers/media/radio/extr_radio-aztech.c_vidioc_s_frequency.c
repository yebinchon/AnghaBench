
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct file {int dummy; } ;
struct aztech {int dummy; } ;


 int az_setfreq (struct aztech*,int ) ;
 struct aztech* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *priv,
    struct v4l2_frequency *f)
{
 struct aztech *az = video_drvdata(file);

 az_setfreq(az, f->frequency);
 return 0;
}
