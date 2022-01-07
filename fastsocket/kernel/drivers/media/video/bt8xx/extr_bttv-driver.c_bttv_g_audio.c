
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audio {int name; int index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int strcpy (int ,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int bttv_g_audio(struct file *file, void *priv, struct v4l2_audio *a)
{
 if (unlikely(a->index))
  return -EINVAL;

 strcpy(a->name, "audio");
 return 0;
}
