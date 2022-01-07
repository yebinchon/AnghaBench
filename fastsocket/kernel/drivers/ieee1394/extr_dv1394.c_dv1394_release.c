
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_card {int open; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int clear_bit (int ,int *) ;
 int do_dv1394_shutdown (struct video_card*,int) ;
 struct video_card* file_to_video_card (struct file*) ;

__attribute__((used)) static int dv1394_release(struct inode *inode, struct file *file)
{
 struct video_card *video = file_to_video_card(file);


 do_dv1394_shutdown(video, 1);


 clear_bit(0, &video->open);

 return 0;
}
