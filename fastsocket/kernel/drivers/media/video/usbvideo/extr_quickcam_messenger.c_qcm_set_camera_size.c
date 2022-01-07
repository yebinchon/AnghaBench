
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int videosize; scalar_t__ user_data; } ;
struct qcm {size_t size; int height; int width; } ;
struct TYPE_2__ {int height; int width; int cmd; } ;


 int CHECK_RET (int,int ) ;
 int VIDEOSIZE (int ,int ) ;
 TYPE_1__* camera_sizes ;
 int qcm_sensor_setsize (struct uvd*,int ) ;

__attribute__((used)) static int qcm_set_camera_size(struct uvd *uvd)
{
 int ret;
 struct qcm *cam = (struct qcm *) uvd->user_data;

 CHECK_RET(ret, qcm_sensor_setsize(uvd, camera_sizes[cam->size].cmd));
 cam->width = camera_sizes[cam->size].width;
 cam->height = camera_sizes[cam->size].height;
 uvd->videosize = VIDEOSIZE(cam->width, cam->height);

 return 0;
}
