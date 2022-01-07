
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_interface {int needs_remote_wakeup; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {scalar_t__ bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int kobj; } ;
struct usb_device {TYPE_3__ dev; } ;
struct ati_remote2 {struct usb_interface** intf; int name; int phys; int channel_mask; int mode_mask; int ** ep; struct usb_device* udev; } ;
struct TYPE_5__ {int desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ati_remote2_attr_group ;
 int ati_remote2_driver ;
 int ati_remote2_input_init (struct ati_remote2*) ;
 int ati_remote2_setup (struct ati_remote2*,int ) ;
 int ati_remote2_urb_cleanup (struct ati_remote2*) ;
 int ati_remote2_urb_init (struct ati_remote2*) ;
 int channel_mask ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct ati_remote2*) ;
 struct ati_remote2* kzalloc (int,int ) ;
 int mode_mask ;
 int strlcat (int ,char*,int) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int usb_driver_claim_interface (int *,struct usb_interface*,struct ati_remote2*) ;
 int usb_driver_release_interface (int *,struct usb_interface*) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int) ;
 int usb_make_path (struct usb_device*,int ,int) ;
 int usb_set_intfdata (struct usb_interface*,struct ati_remote2*) ;

__attribute__((used)) static int ati_remote2_probe(struct usb_interface *interface, const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct usb_host_interface *alt = interface->cur_altsetting;
 struct ati_remote2 *ar2;
 int r;

 if (alt->desc.bInterfaceNumber)
  return -ENODEV;

 ar2 = kzalloc(sizeof (struct ati_remote2), GFP_KERNEL);
 if (!ar2)
  return -ENOMEM;

 ar2->udev = udev;

 ar2->intf[0] = interface;
 ar2->ep[0] = &alt->endpoint[0].desc;

 ar2->intf[1] = usb_ifnum_to_if(udev, 1);
 r = usb_driver_claim_interface(&ati_remote2_driver, ar2->intf[1], ar2);
 if (r)
  goto fail1;
 alt = ar2->intf[1]->cur_altsetting;
 ar2->ep[1] = &alt->endpoint[0].desc;

 r = ati_remote2_urb_init(ar2);
 if (r)
  goto fail2;

 ar2->channel_mask = channel_mask;
 ar2->mode_mask = mode_mask;

 r = ati_remote2_setup(ar2, ar2->channel_mask);
 if (r)
  goto fail2;

 usb_make_path(udev, ar2->phys, sizeof(ar2->phys));
 strlcat(ar2->phys, "/input0", sizeof(ar2->phys));

 strlcat(ar2->name, "ATI Remote Wonder II", sizeof(ar2->name));

 r = sysfs_create_group(&udev->dev.kobj, &ati_remote2_attr_group);
 if (r)
  goto fail2;

 r = ati_remote2_input_init(ar2);
 if (r)
  goto fail3;

 usb_set_intfdata(interface, ar2);

 interface->needs_remote_wakeup = 1;

 return 0;

 fail3:
 sysfs_remove_group(&udev->dev.kobj, &ati_remote2_attr_group);
 fail2:
 ati_remote2_urb_cleanup(ar2);
 usb_driver_release_interface(&ati_remote2_driver, ar2->intf[1]);
 fail1:
 kfree(ar2);

 return r;
}
