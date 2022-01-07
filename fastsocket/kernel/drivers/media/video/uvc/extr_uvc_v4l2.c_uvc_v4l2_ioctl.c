
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int KERN_DEBUG ;
 int UVC_TRACE_IOCTL ;
 int printk (char*) ;
 int uvc_printk (int ,char*) ;
 int uvc_trace_param ;
 int uvc_v4l2_do_ioctl ;
 int v4l_printk_ioctl (unsigned int) ;
 long video_usercopy (struct file*,unsigned int,unsigned long,int ) ;

__attribute__((used)) static long uvc_v4l2_ioctl(struct file *file,
       unsigned int cmd, unsigned long arg)
{
 if (uvc_trace_param & UVC_TRACE_IOCTL) {
  uvc_printk(KERN_DEBUG, "uvc_v4l2_ioctl(");
  v4l_printk_ioctl(cmd);
  printk(")\n");
 }

 return video_usercopy(file, cmd, arg, uvc_v4l2_do_ioctl);
}
