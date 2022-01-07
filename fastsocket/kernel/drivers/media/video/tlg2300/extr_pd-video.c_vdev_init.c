
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int minor; int release; int * v4l2_dev; } ;
struct poseidon {int v4l2_dev; } ;


 struct video_device* video_device_alloc () ;
 int video_device_release ;
 int video_set_drvdata (struct video_device*,struct poseidon*) ;

struct video_device *vdev_init(struct poseidon *pd, struct video_device *tmp)
{
 struct video_device *vfd;

 vfd = video_device_alloc();
 if (vfd == ((void*)0))
  return ((void*)0);
 *vfd = *tmp;
 vfd->minor = -1;
 vfd->v4l2_dev = &pd->v4l2_dev;

 vfd->release = video_device_release;
 video_set_drvdata(vfd, pd);
 return vfd;
}
