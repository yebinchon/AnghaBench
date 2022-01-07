
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zc0301_device {int kref; TYPE_1__* v4ldev; int wait_open; int users; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int num; } ;


 int DBG (int,char*,int ) ;
 int down_write (int *) ;
 int kref_put (int *,int ) ;
 int up_write (int *) ;
 struct zc0301_device* video_drvdata (struct file*) ;
 int wake_up_interruptible_nr (int *,int) ;
 int zc0301_dev_lock ;
 int zc0301_release_buffers (struct zc0301_device*) ;
 int zc0301_release_resources ;
 int zc0301_stop_transfer (struct zc0301_device*) ;

__attribute__((used)) static int zc0301_release(struct file *filp)
{
 struct zc0301_device* cam;

 down_write(&zc0301_dev_lock);

 cam = video_drvdata(filp);

 zc0301_stop_transfer(cam);
 zc0301_release_buffers(cam);
 cam->users--;
 wake_up_interruptible_nr(&cam->wait_open, 1);

 DBG(3, "Video device /dev/video%d closed", cam->v4ldev->num);

 kref_put(&cam->kref, zc0301_release_resources);

 up_write(&zc0301_dev_lock);

 return 0;
}
