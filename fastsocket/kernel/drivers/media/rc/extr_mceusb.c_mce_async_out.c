
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mceusb_dev {int usb_ep_out; } ;


 int MCEUSB_TX ;
 int mce_request_packet (struct mceusb_dev*,int ,unsigned char*,int,int ) ;

__attribute__((used)) static void mce_async_out(struct mceusb_dev *ir, unsigned char *data, int size)
{
 mce_request_packet(ir, ir->usb_ep_out, data, size, MCEUSB_TX);
}
