
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sn9c102_device {int kref; TYPE_1__* v4ldev; int wait_open; int users; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int DBG (int,char*,int ) ;
 int down_write (int *) ;
 int kref_put (int *,int ) ;
 int sn9c102_dev_lock ;
 int sn9c102_release_buffers (struct sn9c102_device*) ;
 int sn9c102_release_resources ;
 int sn9c102_stop_transfer (struct sn9c102_device*) ;
 int up_write (int *) ;
 struct sn9c102_device* video_drvdata (struct file*) ;
 int wake_up_interruptible_nr (int *,int) ;

__attribute__((used)) static int sn9c102_release(struct file *filp)
{
 struct sn9c102_device* cam;

 down_write(&sn9c102_dev_lock);

 cam = video_drvdata(filp);

 sn9c102_stop_transfer(cam);
 sn9c102_release_buffers(cam);
 cam->users--;
 wake_up_interruptible_nr(&cam->wait_open, 1);

 DBG(3, "Video device /dev/video%d closed", cam->v4ldev->num);

 kref_put(&cam->kref, sn9c102_release_resources);

 up_write(&sn9c102_dev_lock);

 return 0;
}
