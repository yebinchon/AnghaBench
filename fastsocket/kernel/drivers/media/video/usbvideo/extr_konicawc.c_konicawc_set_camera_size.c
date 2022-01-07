
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvd {int videosize; scalar_t__ user_data; } ;
struct konicawc {size_t size; int width; int height; int yplanesz; int cur_frame_size; int maxline; } ;
struct TYPE_2__ {int width; int height; int cmd; } ;


 int VIDEOSIZE (int,int) ;
 TYPE_1__* camera_sizes ;
 int konicawc_set_misc (struct uvd*,int,int ,int) ;

__attribute__((used)) static void konicawc_set_camera_size(struct uvd *uvd)
{
 struct konicawc *cam = (struct konicawc *)uvd->user_data;

 konicawc_set_misc(uvd, 0x2, camera_sizes[cam->size].cmd, 0x08);
 cam->width = camera_sizes[cam->size].width;
 cam->height = camera_sizes[cam->size].height;
 cam->yplanesz = cam->height * cam->width;
 cam->cur_frame_size = (cam->yplanesz * 3) / 2;
 cam->maxline = cam->yplanesz / 256;
 uvd->videosize = VIDEOSIZE(cam->width, cam->height);
}
