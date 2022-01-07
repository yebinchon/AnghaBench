
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_8__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_7__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_6__ {struct cx231xx* alt_max_pkt_size; } ;
struct TYPE_5__ {struct cx231xx* alt_max_pkt_size; } ;
struct cx231xx {TYPE_4__ ts1_mode; TYPE_3__ sliced_cc_mode; TYPE_2__ vbi_mode; TYPE_1__ video_mode; scalar_t__ users; int lock; int state; int wait_stream; int wait_frame; scalar_t__ USE_ISO; int vdev; int open; int v4l2_dev; int udev; } ;


 int DEV_DISCONNECTED ;
 int DEV_MISCONFIGURED ;
 int cx231xx_close_extension (struct cx231xx*) ;
 int cx231xx_release_resources (struct cx231xx*) ;
 int cx231xx_uninit_bulk (struct cx231xx*) ;
 int cx231xx_uninit_isoc (struct cx231xx*) ;
 int cx231xx_warn (char*,int ) ;
 int kfree (struct cx231xx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx231xx* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_unregister (int *) ;
 int video_device_node_name (int ) ;
 int wake_up_interruptible (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void cx231xx_usb_disconnect(struct usb_interface *interface)
{
 struct cx231xx *dev;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));

 if (!dev)
  return;

 if (!dev->udev)
  return;


 v4l2_device_unregister(&dev->v4l2_dev);



 mutex_lock(&dev->lock);

 wake_up_interruptible_all(&dev->open);

 if (dev->users) {
  cx231xx_warn
      ("device %s is open! Deregistration and memory "
       "deallocation are deferred on close.\n",
       video_device_node_name(dev->vdev));

  dev->state |= DEV_MISCONFIGURED;
  if (dev->USE_ISO)
   cx231xx_uninit_isoc(dev);
  else
   cx231xx_uninit_bulk(dev);
  dev->state |= DEV_DISCONNECTED;
  wake_up_interruptible(&dev->wait_frame);
  wake_up_interruptible(&dev->wait_stream);
 } else {
  dev->state |= DEV_DISCONNECTED;
  cx231xx_release_resources(dev);
 }

 cx231xx_close_extension(dev);

 mutex_unlock(&dev->lock);

 if (!dev->users) {
  kfree(dev->video_mode.alt_max_pkt_size);
  kfree(dev->vbi_mode.alt_max_pkt_size);
  kfree(dev->sliced_cc_mode.alt_max_pkt_size);
  kfree(dev->ts1_mode.alt_max_pkt_size);
  kfree(dev);
  dev = ((void*)0);
 }
}
