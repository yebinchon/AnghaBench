
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num; } ;
struct cam_data {scalar_t__ open_count; TYPE_1__ vdev; int * ops; } ;


 int DBG (char*,...) ;
 int destroy_proc_cpia_cam (struct cam_data*) ;
 int kfree (struct cam_data*) ;
 int put_cam (int *) ;
 int video_unregister_device (TYPE_1__*) ;

void cpia_unregister_camera(struct cam_data *cam)
{
 DBG("unregistering video\n");
 video_unregister_device(&cam->vdev);
 if (cam->open_count) {
  put_cam(cam->ops);
  DBG("camera open -- setting ops to NULL\n");
  cam->ops = ((void*)0);
 }





 if (!cam->open_count) {
  DBG("freeing camera\n");
  kfree(cam);
 }
}
