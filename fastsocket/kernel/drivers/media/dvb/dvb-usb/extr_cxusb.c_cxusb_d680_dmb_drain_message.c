
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int generic_bulk_ctrl_endpoint; } ;
struct dvb_usb_device {int udev; TYPE_1__ props; } ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int const,int ) ;
 scalar_t__ usb_bulk_msg (int ,int ,int *,int const,int*,int const) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static void cxusb_d680_dmb_drain_message(struct dvb_usb_device *d)
{
 int ep = d->props.generic_bulk_ctrl_endpoint;
 const int timeout = 100;
 const int junk_len = 32;
 u8 *junk;
 int rd_count;


 junk = kmalloc(junk_len, GFP_KERNEL);
 if (!junk)
  return;
 while (1) {
  if (usb_bulk_msg(d->udev,
   usb_rcvbulkpipe(d->udev, ep),
   junk, junk_len, &rd_count, timeout) < 0)
   break;
  if (!rd_count)
   break;
 }
 kfree(junk);
}
