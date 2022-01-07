
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; } ;
struct poseidon {int pm_resume; int pm_suspend; } ;
struct front_face {struct poseidon* pd; } ;
struct file {int dummy; } ;


 int logs (struct front_face*) ;
 int pm_video_resume ;
 int pm_video_suspend ;
 int set_frequency (struct poseidon*,int ) ;

__attribute__((used)) static int vidioc_s_frequency(struct file *file, void *fh,
    struct v4l2_frequency *freq)
{
 struct front_face *front = fh;
 struct poseidon *pd = front->pd;

 logs(front);




 return set_frequency(pd, freq->frequency);
}
