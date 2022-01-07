
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int capability; int name; scalar_t__ index; } ;
struct file {int dummy; } ;


 int V4L2_AUDCAP_STEREO ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_g_audio(struct file *file, void *priv,
     struct v4l2_audio *a)
{
 a->index = 0;
 strlcpy(a->name, "Radio", sizeof(a->name));
 a->capability = V4L2_AUDCAP_STEREO;
 return 0;
}
