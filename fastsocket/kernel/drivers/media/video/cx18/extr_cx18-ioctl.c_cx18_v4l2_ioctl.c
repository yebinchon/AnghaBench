
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int debug; } ;
struct file {struct cx18_open_id* private_data; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int serialize_lock; } ;


 int CX18_DBGFLG_IOCTL ;
 int V4L2_DEBUG_IOCTL ;
 int V4L2_DEBUG_IOCTL_ARG ;
 int cx18_debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct video_device* video_devdata (struct file*) ;
 long video_ioctl2 (struct file*,unsigned int,unsigned long) ;

long cx18_v4l2_ioctl(struct file *filp, unsigned int cmd,
      unsigned long arg)
{
 struct video_device *vfd = video_devdata(filp);
 struct cx18_open_id *id = filp->private_data;
 struct cx18 *cx = id->cx;
 long res;

 mutex_lock(&cx->serialize_lock);



 if (cx18_debug & CX18_DBGFLG_IOCTL)
  vfd->debug = V4L2_DEBUG_IOCTL | V4L2_DEBUG_IOCTL_ARG;
 res = video_ioctl2(filp, cmd, arg);
 vfd->debug = 0;
 mutex_unlock(&cx->serialize_lock);
 return res;
}
