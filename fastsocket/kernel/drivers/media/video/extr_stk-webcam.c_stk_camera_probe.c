
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int brightness; int mode; int palette; int hflip; int vflip; } ;
struct stk_camera {int frame_size; int sio_full; int sio_avail; TYPE_3__ vsettings; scalar_t__ isoc_ep; scalar_t__ n_sbufs; struct usb_interface* interface; struct usb_device* udev; int wait_frame; int spinlock; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MODE_VGA ;
 int STK_ERROR (char*) ;
 int V4L2_PIX_FMT_RGB565 ;
 int hflip ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct stk_camera*) ;
 struct stk_camera* kzalloc (int,int ) ;
 int set_present (struct stk_camera*) ;
 int spin_lock_init (int *) ;
 int stk_register_video_device (struct stk_camera*) ;
 scalar_t__ usb_endpoint_is_isoc_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_num (struct usb_endpoint_descriptor*) ;
 int usb_get_intf (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,struct stk_camera*) ;
 int vflip ;

__attribute__((used)) static int stk_camera_probe(struct usb_interface *interface,
  const struct usb_device_id *id)
{
 int i;
 int err = 0;

 struct stk_camera *dev = ((void*)0);
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;

 dev = kzalloc(sizeof(struct stk_camera), GFP_KERNEL);
 if (dev == ((void*)0)) {
  STK_ERROR("Out of memory !\n");
  return -ENOMEM;
 }

 spin_lock_init(&dev->spinlock);
 init_waitqueue_head(&dev->wait_frame);

 dev->udev = udev;
 dev->interface = interface;
 usb_get_intf(interface);

 dev->vsettings.vflip = vflip;
 dev->vsettings.hflip = hflip;
 dev->n_sbufs = 0;
 set_present(dev);




 iface_desc = interface->cur_altsetting;

 for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;

  if (!dev->isoc_ep
   && usb_endpoint_is_isoc_in(endpoint)) {

   dev->isoc_ep = usb_endpoint_num(endpoint);
   break;
  }
 }
 if (!dev->isoc_ep) {
  STK_ERROR("Could not find isoc-in endpoint");
  err = -ENODEV;
  goto error;
 }
 dev->vsettings.brightness = 0x7fff;
 dev->vsettings.palette = V4L2_PIX_FMT_RGB565;
 dev->vsettings.mode = MODE_VGA;
 dev->frame_size = 640 * 480 * 2;

 INIT_LIST_HEAD(&dev->sio_avail);
 INIT_LIST_HEAD(&dev->sio_full);

 usb_set_intfdata(interface, dev);

 err = stk_register_video_device(dev);
 if (err) {
  goto error;
 }

 return 0;

error:
 kfree(dev);
 return err;
}
