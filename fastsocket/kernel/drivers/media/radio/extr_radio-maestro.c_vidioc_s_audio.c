
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int vidioc_s_audio(struct file *file, void *priv,
     struct v4l2_audio *a)
{
 return a->index ? -EINVAL : 0;
}
