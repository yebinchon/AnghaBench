
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm5974 {int udev; } ;


 char BCM5974_WELLSPRING_MODE_NORMAL_VALUE ;
 int BCM5974_WELLSPRING_MODE_READ_REQUEST_ID ;
 int BCM5974_WELLSPRING_MODE_REQUEST_INDEX ;
 int BCM5974_WELLSPRING_MODE_REQUEST_VALUE ;
 char BCM5974_WELLSPRING_MODE_VENDOR_VALUE ;
 int BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dprintk (int,char*,char*) ;
 int err (char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int bcm5974_wellspring_mode(struct bcm5974 *dev, bool on)
{
 char *data = kmalloc(8, GFP_KERNEL);
 int retval = 0, size;

 if (!data) {
  err("bcm5974: out of memory");
  retval = -ENOMEM;
  goto out;
 }


 size = usb_control_msg(dev->udev, usb_rcvctrlpipe(dev->udev, 0),
   BCM5974_WELLSPRING_MODE_READ_REQUEST_ID,
   USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   BCM5974_WELLSPRING_MODE_REQUEST_VALUE,
   BCM5974_WELLSPRING_MODE_REQUEST_INDEX, data, 8, 5000);

 if (size != 8) {
  err("bcm5974: could not read from device");
  retval = -EIO;
  goto out;
 }


 data[0] = on ?
  BCM5974_WELLSPRING_MODE_VENDOR_VALUE :
  BCM5974_WELLSPRING_MODE_NORMAL_VALUE;


 size = usb_control_msg(dev->udev, usb_sndctrlpipe(dev->udev, 0),
   BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
   BCM5974_WELLSPRING_MODE_REQUEST_VALUE,
   BCM5974_WELLSPRING_MODE_REQUEST_INDEX, data, 8, 5000);

 if (size != 8) {
  err("bcm5974: could not write to device");
  retval = -EIO;
  goto out;
 }

 dprintk(2, "bcm5974: switched to %s mode.\n",
  on ? "wellspring" : "normal");

 out:
 kfree(data);
 return retval;
}
