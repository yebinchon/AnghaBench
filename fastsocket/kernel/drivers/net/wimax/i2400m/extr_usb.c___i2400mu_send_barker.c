
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct i2400mu {TYPE_1__* usb_iface; int usb_dev; } ;
struct device {int dummy; } ;
typedef int __le32 ;
struct TYPE_4__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int dev_err (struct device*,char*,int) ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,int const*,size_t) ;
 int usb_autopm_get_interface (TYPE_1__*) ;
 int usb_autopm_put_interface (TYPE_1__*) ;
 int usb_bulk_msg (int ,int,void*,size_t,int*,int ) ;
 struct usb_endpoint_descriptor* usb_get_epd (TYPE_1__*,unsigned int) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static
int __i2400mu_send_barker(struct i2400mu *i2400mu,
     const __le32 *barker,
     size_t barker_size,
     unsigned endpoint)
{
 struct usb_endpoint_descriptor *epd = ((void*)0);
 int pipe, actual_len, ret;
 struct device *dev = &i2400mu->usb_iface->dev;
 void *buffer;
 int do_autopm = 1;

 ret = usb_autopm_get_interface(i2400mu->usb_iface);
 if (ret < 0) {
  dev_err(dev, "RESET: can't get autopm: %d\n", ret);
  do_autopm = 0;
 }
 ret = -ENOMEM;
 buffer = kmalloc(barker_size, GFP_KERNEL);
 if (buffer == ((void*)0))
  goto error_kzalloc;
 epd = usb_get_epd(i2400mu->usb_iface, endpoint);
 pipe = usb_sndbulkpipe(i2400mu->usb_dev, epd->bEndpointAddress);
 memcpy(buffer, barker, barker_size);
 ret = usb_bulk_msg(i2400mu->usb_dev, pipe, buffer, barker_size,
      &actual_len, HZ);
 if (ret < 0) {
  if (ret != -EINVAL)
   dev_err(dev, "E: barker error: %d\n", ret);
 } else if (actual_len != barker_size) {
  dev_err(dev, "E: only %d bytes transmitted\n", actual_len);
  ret = -EIO;
 }
 kfree(buffer);
error_kzalloc:
 if (do_autopm)
  usb_autopm_put_interface(i2400mu->usb_iface);
 return ret;
}
