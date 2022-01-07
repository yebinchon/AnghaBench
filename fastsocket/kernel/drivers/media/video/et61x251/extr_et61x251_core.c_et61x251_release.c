
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct et61x251_device {int kref; TYPE_1__* v4ldev; int wait_open; int users; } ;
struct TYPE_2__ {int num; } ;


 int DBG (int,char*,int ) ;
 int down_write (int *) ;
 int et61x251_dev_lock ;
 int et61x251_release_buffers (struct et61x251_device*) ;
 int et61x251_release_resources ;
 int et61x251_stop_transfer (struct et61x251_device*) ;
 int kref_put (int *,int ) ;
 int up_write (int *) ;
 struct et61x251_device* video_drvdata (struct file*) ;
 int wake_up_interruptible_nr (int *,int) ;

__attribute__((used)) static int et61x251_release(struct file *filp)
{
 struct et61x251_device* cam;

 down_write(&et61x251_dev_lock);

 cam = video_drvdata(filp);

 et61x251_stop_transfer(cam);
 et61x251_release_buffers(cam);
 cam->users--;
 wake_up_interruptible_nr(&cam->wait_open, 1);

 DBG(3, "Video device /dev/video%d closed", cam->v4ldev->num);

 kref_put(&cam->kref, et61x251_release_resources);

 up_write(&et61x251_dev_lock);

 return 0;
}
