
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int card; } ;
struct soc_camera_host {int dummy; } ;


 int PXA_CAM_VERSION_CODE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int pxa_cam_driver_description ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int pxa_camera_querycap(struct soc_camera_host *ici,
          struct v4l2_capability *cap)
{

 strlcpy(cap->card, pxa_cam_driver_description, sizeof(cap->card));
 cap->version = PXA_CAM_VERSION_CODE;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;

 return 0;
}
