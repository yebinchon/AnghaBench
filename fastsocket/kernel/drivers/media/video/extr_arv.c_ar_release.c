
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct ar_device {int lock; } ;


 int mutex_lock (int *) ;
 int video_device_release (struct video_device*) ;
 struct ar_device* video_get_drvdata (struct video_device*) ;

void ar_release(struct video_device *vfd)
{
 struct ar_device *ar = video_get_drvdata(vfd);
 mutex_lock(&ar->lock);
 video_device_release(vfd);
}
