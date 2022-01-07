
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ mode; int capability; int name; scalar_t__ index; } ;
struct file {int dummy; } ;


 int V4L2_AUDCAP_STEREO ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int si470x_vidioc_g_audio(struct file *file, void *priv,
  struct v4l2_audio *audio)
{

 audio->index = 0;
 strcpy(audio->name, "Radio");
 audio->capability = V4L2_AUDCAP_STEREO;
 audio->mode = 0;

 return 0;
}
