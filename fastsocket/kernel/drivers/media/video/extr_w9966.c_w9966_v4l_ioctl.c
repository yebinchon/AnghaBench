
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;
 int w9966_v4l_do_ioctl ;

__attribute__((used)) static long w9966_v4l_ioctl(struct file *file,
      unsigned int cmd, unsigned long arg)
{
 return video_usercopy(file, cmd, arg, w9966_v4l_do_ioctl);
}
