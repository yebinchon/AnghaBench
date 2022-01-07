
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camera_data {TYPE_1__* vdev; int open_count; } ;
struct TYPE_2__ {int num; } ;


 int LOG (char*,int ) ;
 int video_unregister_device (TYPE_1__*) ;

void cpia2_unregister_camera(struct camera_data *cam)
{
 if (!cam->open_count) {
  video_unregister_device(cam->vdev);
 } else {
  LOG("/dev/video%d removed while open, "
      "deferring video_unregister_device\n",
      cam->vdev->num);
 }
}
