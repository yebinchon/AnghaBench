
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_12__ {int * parent; } ;
struct TYPE_10__ {TYPE_6__ dev; int name; struct i2c_tiny_usb* algo_data; int * algo; int class; int owner; } ;
struct i2c_tiny_usb {TYPE_3__ adapter; struct usb_interface* interface; TYPE_4__* usb_dev; } ;
struct TYPE_8__ {int bcdDevice; } ;
struct TYPE_11__ {int devnum; TYPE_2__* bus; TYPE_1__ descriptor; } ;
struct TYPE_9__ {int busnum; } ;


 int CMD_SET_DELAY ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_CLASS_HWMON ;
 int THIS_MODULE ;
 int delay ;
 int dev_dbg (int *,char*) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int dev_info (TYPE_6__*,char*,...) ;
 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_tiny_usb_free (struct i2c_tiny_usb*) ;
 int interface_to_usbdev (struct usb_interface*) ;
 struct i2c_tiny_usb* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int snprintf (int ,int,char*,int,int) ;
 int usb_algorithm ;
 TYPE_4__* usb_get_dev (int ) ;
 int usb_set_intfdata (struct usb_interface*,struct i2c_tiny_usb*) ;
 scalar_t__ usb_write (TYPE_3__*,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int i2c_tiny_usb_probe(struct usb_interface *interface,
         const struct usb_device_id *id)
{
 struct i2c_tiny_usb *dev;
 int retval = -ENOMEM;
 u16 version;

 dev_dbg(&interface->dev, "probing usb device\n");


 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0)) {
  dev_err(&interface->dev, "Out of memory\n");
  goto error;
 }

 dev->usb_dev = usb_get_dev(interface_to_usbdev(interface));
 dev->interface = interface;


 usb_set_intfdata(interface, dev);

 version = le16_to_cpu(dev->usb_dev->descriptor.bcdDevice);
 dev_info(&interface->dev,
   "version %x.%02x found at bus %03d address %03d\n",
   version >> 8, version & 0xff,
   dev->usb_dev->bus->busnum, dev->usb_dev->devnum);


 dev->adapter.owner = THIS_MODULE;
 dev->adapter.class = I2C_CLASS_HWMON;
 dev->adapter.algo = &usb_algorithm;
 dev->adapter.algo_data = dev;
 snprintf(dev->adapter.name, sizeof(dev->adapter.name),
   "i2c-tiny-usb at bus %03d device %03d",
   dev->usb_dev->bus->busnum, dev->usb_dev->devnum);

 if (usb_write(&dev->adapter, CMD_SET_DELAY, delay, 0, ((void*)0), 0) != 0) {
  dev_err(&dev->adapter.dev,
   "failure setting delay to %dus\n", delay);
  retval = -EIO;
  goto error;
 }

 dev->adapter.dev.parent = &dev->interface->dev;


 i2c_add_adapter(&dev->adapter);


 dev_info(&dev->adapter.dev, "connected i2c-tiny-usb device\n");

 return 0;

 error:
 if (dev)
  i2c_tiny_usb_free(dev);

 return retval;
}
