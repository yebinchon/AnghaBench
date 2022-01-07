
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int pvr2_v4l2_do_ioctl ;
 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long pvr2_v4l2_ioctl(struct file *file,
      unsigned int cmd, unsigned long arg)
{

 return video_usercopy(file, cmd, arg, pvr2_v4l2_do_ioctl);
}
