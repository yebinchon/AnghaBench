
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device_shadow {int * lock; } ;
struct video_device {int name; int debug; int release; int * v4l2_dev; } ;
struct em28xx {char* name; int lock; int v4l2_dev; } ;


 int snprintf (int ,int,char*,char*,char const*) ;
 int video_debug ;
 struct video_device* video_device_alloc () ;
 int video_device_release ;
 struct video_device_shadow* video_device_shadow_get (struct video_device*) ;
 int video_set_drvdata (struct video_device*,struct em28xx*) ;

__attribute__((used)) static struct video_device *em28xx_vdev_init(struct em28xx *dev,
     const struct video_device *template,
     const char *type_name)
{
 struct video_device *vfd;
 struct video_device_shadow *shvfd;

 vfd = video_device_alloc();
 if (((void*)0) == vfd)
  return ((void*)0);

 shvfd = video_device_shadow_get(vfd);
 if (((void*)0) == shvfd)
  return ((void*)0);

 *vfd = *template;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->release = video_device_release;
 vfd->debug = video_debug;
 shvfd->lock = &dev->lock;

 snprintf(vfd->name, sizeof(vfd->name), "%s %s",
   dev->name, type_name);

 video_set_drvdata(vfd, dev);
 return vfd;
}
