
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int current_norm; } ;


 int LINE_SZ_4CIFS_NTSC ;
 int LINE_SZ_4CIFS_PAL ;
 int V4L2_STD_NTSC ;

__attribute__((used)) static int norm_maxw(struct video_device *vdev)
{
 return (vdev->current_norm & V4L2_STD_NTSC) ?
     LINE_SZ_4CIFS_NTSC : LINE_SZ_4CIFS_PAL;
}
