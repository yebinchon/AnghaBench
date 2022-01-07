
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dev; } ;
struct flexcop_usb {struct usb_interface* uintf; struct usb_device* udev; struct flexcop_device* fc_dev; } ;
struct flexcop_device {int pid_filtering; int owner; int * dev; int bus_type; int stream_control; int get_mac_addr; int i2c_request; int write_ibi_reg; int read_ibi_reg; struct flexcop_usb* bus_specific; } ;


 int DRIVER_NAME ;
 int ENOMEM ;
 int FC_USB ;
 int THIS_MODULE ;
 int err (char*) ;
 int flexcop_device_exit (struct flexcop_device*) ;
 int flexcop_device_initialize (struct flexcop_device*) ;
 int flexcop_device_kfree (struct flexcop_device*) ;
 struct flexcop_device* flexcop_device_kmalloc (int) ;
 int flexcop_usb_exit (struct flexcop_usb*) ;
 int flexcop_usb_get_mac_addr ;
 int flexcop_usb_i2c_request ;
 int flexcop_usb_init (struct flexcop_usb*) ;
 int flexcop_usb_read_ibi_reg ;
 int flexcop_usb_stream_control ;
 int flexcop_usb_transfer_init (struct flexcop_usb*) ;
 int flexcop_usb_write_ibi_reg ;
 int info (char*,int ) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;

__attribute__((used)) static int flexcop_usb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 struct flexcop_usb *fc_usb = ((void*)0);
 struct flexcop_device *fc = ((void*)0);
 int ret;

 if ((fc = flexcop_device_kmalloc(sizeof(struct flexcop_usb))) == ((void*)0)) {
  err("out of memory\n");
  return -ENOMEM;
 }


 fc_usb = fc->bus_specific;
 fc_usb->fc_dev = fc;

 fc->read_ibi_reg = flexcop_usb_read_ibi_reg;
 fc->write_ibi_reg = flexcop_usb_write_ibi_reg;
 fc->i2c_request = flexcop_usb_i2c_request;
 fc->get_mac_addr = flexcop_usb_get_mac_addr;

 fc->stream_control = flexcop_usb_stream_control;

 fc->pid_filtering = 1;
 fc->bus_type = FC_USB;

 fc->dev = &udev->dev;
 fc->owner = THIS_MODULE;


 fc_usb->udev = udev;
 fc_usb->uintf = intf;
 if ((ret = flexcop_usb_init(fc_usb)) != 0)
  goto err_kfree;


 if ((ret = flexcop_device_initialize(fc)) != 0)
  goto err_usb_exit;


 if ((ret = flexcop_usb_transfer_init(fc_usb)) != 0)
  goto err_fc_exit;

 info("%s successfully initialized and connected.", DRIVER_NAME);
 return 0;

err_fc_exit:
 flexcop_device_exit(fc);
err_usb_exit:
 flexcop_usb_exit(fc_usb);
err_kfree:
 flexcop_device_kfree(fc);
 return ret;
}
