
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {int * shared; } ;
struct wacom_usbdev_data {int shared; int list; struct usb_device* dev; int kref; } ;
struct usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct wacom_usbdev_data* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wacom_usbdev_data* wacom_get_usbdev_data (struct usb_device*) ;
 int wacom_udev_list ;
 int wacom_udev_list_lock ;

__attribute__((used)) static int wacom_add_shared_data(struct wacom_wac *wacom,
     struct usb_device *dev)
{
 struct wacom_usbdev_data *data;
 int retval = 0;

 mutex_lock(&wacom_udev_list_lock);

 data = wacom_get_usbdev_data(dev);
 if (!data) {
  data = kzalloc(sizeof(struct wacom_usbdev_data), GFP_KERNEL);
  if (!data) {
   retval = -ENOMEM;
   goto out;
  }

  kref_init(&data->kref);
  data->dev = dev;
  list_add_tail(&data->list, &wacom_udev_list);
 }

 wacom->shared = &data->shared;

out:
 mutex_unlock(&wacom_udev_list_lock);
 return retval;
}
