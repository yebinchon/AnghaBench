
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_channel {scalar_t__ channel; } ;


 int EINVAL ;

__attribute__((used)) static int ioctl_set_channel(void *arg)
{
 struct video_channel *v;
 int retval = 0;
 v = arg;

 if (retval == 0 && v->channel != 0)
  retval = -EINVAL;

 return retval;
}
