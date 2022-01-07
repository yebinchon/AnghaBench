
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pdabusb_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {TYPE_2__* usbdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int usb_control_msg (TYPE_2__*,int ,int,int,int,int ,unsigned char*,int,int) ;
 int usb_sndctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int dabusb_writemem (pdabusb_t s, int pos, const unsigned char *data,
       int len)
{
 int ret;
 unsigned char *transfer_buffer = kmalloc (len, GFP_KERNEL);

 if (!transfer_buffer) {
  dev_err(&s->usbdev->dev,
   "dabusb_writemem: kmalloc(%d) failed.\n", len);
  return -ENOMEM;
 }

 memcpy (transfer_buffer, data, len);

 ret=usb_control_msg(s->usbdev, usb_sndctrlpipe( s->usbdev, 0 ), 0xa0, 0x40, pos, 0, transfer_buffer, len, 300);

 kfree (transfer_buffer);
 return ret;
}
