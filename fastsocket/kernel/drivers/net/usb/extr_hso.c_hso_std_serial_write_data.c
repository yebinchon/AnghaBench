
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hso_serial {int tx_data_count; TYPE_2__* parent; int tx_urb; int tx_data; TYPE_1__* out_endp; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {TYPE_3__* usb; } ;
struct TYPE_5__ {int bEndpointAddress; } ;


 int GFP_ATOMIC ;
 int dev_warn (int *,char*,int) ;
 int hso_std_serial_write_bulk_callback ;
 int usb_fill_bulk_urb (int ,TYPE_3__*,int ,int ,int,int ,struct hso_serial*) ;
 int usb_sndbulkpipe (TYPE_3__*,int) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int hso_std_serial_write_data(struct hso_serial *serial)
{
 int count = serial->tx_data_count;
 int result;

 usb_fill_bulk_urb(serial->tx_urb,
     serial->parent->usb,
     usb_sndbulkpipe(serial->parent->usb,
       serial->out_endp->
       bEndpointAddress & 0x7F),
     serial->tx_data, serial->tx_data_count,
     hso_std_serial_write_bulk_callback, serial);

 result = usb_submit_urb(serial->tx_urb, GFP_ATOMIC);
 if (result) {
  dev_warn(&serial->parent->usb->dev,
    "Failed to submit urb - res %d\n", result);
  return result;
 }

 return count;
}
