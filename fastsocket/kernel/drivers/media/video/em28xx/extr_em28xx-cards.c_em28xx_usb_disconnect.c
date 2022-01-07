
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct em28xx {struct em28xx* alt_max_pkt_size; scalar_t__ users; int lock; int state; int wait_stream; int wait_frame; TYPE_1__* vdev; int v4l2_dev; int open; } ;
struct TYPE_2__ {int name; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int em28xx_close_extension (struct em28xx*) ;
 int em28xx_info (char*,int ) ;
 int em28xx_release_resources (struct em28xx*) ;
 int em28xx_uninit_isoc (struct em28xx*) ;
 int em28xx_warn (char*,int ) ;
 int kfree (struct em28xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct em28xx* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int video_device_node_name (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void em28xx_usb_disconnect(struct usb_interface *interface)
{
 struct em28xx *dev;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 if (!dev)
  return;

 em28xx_info("disconnecting %s\n", dev->vdev->name);



 mutex_lock(&dev->lock);

 wake_up_interruptible_all(&dev->open);

 v4l2_device_disconnect(&dev->v4l2_dev);

 if (dev->users) {
  em28xx_warn
      ("device %s is open! Deregistration and memory "
       "deallocation are deferred on close.\n",
       video_device_node_name(dev->vdev));

  dev->state |= DEV_MISCONFIGURED;
  em28xx_uninit_isoc(dev);
  dev->state |= DEV_DISCONNECTED;
  wake_up_interruptible(&dev->wait_frame);
  wake_up_interruptible(&dev->wait_stream);
 } else {
  dev->state |= DEV_DISCONNECTED;
  em28xx_release_resources(dev);
 }

 em28xx_close_extension(dev);

 mutex_unlock(&dev->lock);

 if (!dev->users) {
  kfree(dev->alt_max_pkt_size);
  kfree(dev);
 }
}
