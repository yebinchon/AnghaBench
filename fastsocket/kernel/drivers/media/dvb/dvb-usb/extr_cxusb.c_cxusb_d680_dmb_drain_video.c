
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int buffersize; } ;
struct TYPE_8__ {TYPE_3__ bulk; } ;
struct usb_data_stream_properties {int endpoint; TYPE_4__ u; } ;
struct TYPE_6__ {TYPE_1__* adapter; } ;
struct dvb_usb_device {int udev; TYPE_2__ props; } ;
struct TYPE_5__ {struct usb_data_stream_properties stream; } ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (int const,int ) ;
 scalar_t__ usb_bulk_msg (int ,int ,int *,int const,int*,int const) ;
 int usb_rcvbulkpipe (int ,int ) ;

__attribute__((used)) static void cxusb_d680_dmb_drain_video(struct dvb_usb_device *d)
{
 struct usb_data_stream_properties *p = &d->props.adapter[0].stream;
 const int timeout = 100;
 const int junk_len = p->u.bulk.buffersize;
 u8 *junk;
 int rd_count;


 junk = kmalloc(junk_len, GFP_KERNEL);
 if (!junk)
  return;
 while (1) {
  if (usb_bulk_msg(d->udev,
   usb_rcvbulkpipe(d->udev, p->endpoint),
   junk, junk_len, &rd_count, timeout) < 0)
   break;
  if (!rd_count)
   break;
 }
 kfree(junk);
}
