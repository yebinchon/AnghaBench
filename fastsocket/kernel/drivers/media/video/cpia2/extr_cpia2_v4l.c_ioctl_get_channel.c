
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_channel {scalar_t__ channel; scalar_t__ norm; int type; scalar_t__ flags; scalar_t__ tuners; int name; } ;


 int EINVAL ;
 int VIDEO_TYPE_CAMERA ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ioctl_get_channel(void *arg)
{
 int retval = 0;
 struct video_channel *v;
 v = arg;

 if (v->channel != 0)
  return -EINVAL;

 v->channel = 0;
 strcpy(v->name, "Camera");
 v->tuners = 0;
 v->flags = 0;
 v->type = VIDEO_TYPE_CAMERA;
 v->norm = 0;

 return retval;
}
