
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {int fasync; } ;
struct file {int dummy; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 struct video_card* file_to_video_card (struct file*) ;

__attribute__((used)) static int dv1394_fasync(int fd, struct file *file, int on)
{



 struct video_card *video = file_to_video_card(file);

 return fasync_helper(fd, file, on, &video->fasync);
}
