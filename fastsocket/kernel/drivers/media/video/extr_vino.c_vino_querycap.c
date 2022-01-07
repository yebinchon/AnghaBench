
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VINO_VERSION_CODE ;
 int memset (struct v4l2_capability*,int ,int) ;
 int strcpy (int ,int ) ;
 int vino_bus_name ;
 int vino_driver_description ;
 int vino_driver_name ;

__attribute__((used)) static int vino_querycap(struct file *file, void *__fh,
  struct v4l2_capability *cap)
{
 memset(cap, 0, sizeof(struct v4l2_capability));

 strcpy(cap->driver, vino_driver_name);
 strcpy(cap->card, vino_driver_description);
 strcpy(cap->bus_info, vino_bus_name);
 cap->version = VINO_VERSION_CODE;
 cap->capabilities =
  V4L2_CAP_VIDEO_CAPTURE |
  V4L2_CAP_STREAMING;

 return 0;
}
