
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int current_norm; } ;


 int NUM_LINES_1CIFS_NTSC ;
 int NUM_LINES_1CIFS_PAL ;
 int V4L2_STD_NTSC ;

__attribute__((used)) static int norm_minh(struct video_device *vdev)
{
 return (vdev->current_norm & V4L2_STD_NTSC) ?
     (NUM_LINES_1CIFS_NTSC) : (NUM_LINES_1CIFS_PAL);
}
