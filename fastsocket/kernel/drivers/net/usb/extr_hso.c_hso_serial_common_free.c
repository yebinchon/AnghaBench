
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hso_serial {int num_rx_urbs; int tx_data; int tx_urb; int * rx_data; int * rx_urb; int minor; TYPE_1__* parent; } ;
struct TYPE_2__ {scalar_t__ dev; } ;


 int dev_attr_hsotype ;
 int device_remove_file (scalar_t__,int *) ;
 int kfree (int ) ;
 int tty_drv ;
 int tty_unregister_device (int ,int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void hso_serial_common_free(struct hso_serial *serial)
{
 int i;

 if (serial->parent->dev)
  device_remove_file(serial->parent->dev, &dev_attr_hsotype);

 tty_unregister_device(tty_drv, serial->minor);

 for (i = 0; i < serial->num_rx_urbs; i++) {

  usb_free_urb(serial->rx_urb[i]);

  kfree(serial->rx_data[i]);
 }


 usb_free_urb(serial->tx_urb);
 kfree(serial->tx_data);
}
