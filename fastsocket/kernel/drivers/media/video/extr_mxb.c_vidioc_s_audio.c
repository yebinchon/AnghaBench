
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int index; } ;
struct file {int dummy; } ;


 int DEB_D (char*) ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *fh, struct v4l2_audio *a)
{
 DEB_D(("VIDIOC_S_AUDIO %d.\n", a->index));
 return 0;
}
