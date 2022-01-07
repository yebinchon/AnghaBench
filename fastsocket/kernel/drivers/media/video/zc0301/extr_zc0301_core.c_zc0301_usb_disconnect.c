
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zc0301_device {int kref; int wait_open; int state; int wait_stream; int wait_frame; TYPE_1__* v4ldev; scalar_t__ users; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int num; int name; } ;


 int DBG (int,char*,int ) ;
 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int down_write (int *) ;
 int kref_put (int *,int ) ;
 int up_write (int *) ;
 struct zc0301_device* usb_get_intfdata (struct usb_interface*) ;
 int wake_up (int *) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;
 int zc0301_dev_lock ;
 int zc0301_release_resources ;
 int zc0301_stop_transfer (struct zc0301_device*) ;

__attribute__((used)) static void zc0301_usb_disconnect(struct usb_interface* intf)
{
 struct zc0301_device* cam;

 down_write(&zc0301_dev_lock);

 cam = usb_get_intfdata(intf);

 DBG(2, "Disconnecting %s...", cam->v4ldev->name);

 if (cam->users) {
  DBG(2, "Device /dev/video%d is open! Deregistration and "
         "memory deallocation are deferred.",
      cam->v4ldev->num);
  cam->state |= DEV_MISCONFIGURED;
  zc0301_stop_transfer(cam);
  cam->state |= DEV_DISCONNECTED;
  wake_up_interruptible(&cam->wait_frame);
  wake_up(&cam->wait_stream);
 } else
  cam->state |= DEV_DISCONNECTED;

 wake_up_interruptible_all(&cam->wait_open);

 kref_put(&cam->kref, zc0301_release_resources);

 up_write(&zc0301_dev_lock);
}
