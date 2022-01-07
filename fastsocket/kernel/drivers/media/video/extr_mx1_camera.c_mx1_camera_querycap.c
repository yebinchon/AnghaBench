
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int card; } ;
struct soc_camera_host {int dummy; } ;


 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VERSION_CODE ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int mx1_camera_querycap(struct soc_camera_host *ici,
          struct v4l2_capability *cap)
{

 strlcpy(cap->card, "i.MX1/i.MXL Camera", sizeof(cap->card));
 cap->version = VERSION_CODE;
 cap->capabilities = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING;

 return 0;
}
