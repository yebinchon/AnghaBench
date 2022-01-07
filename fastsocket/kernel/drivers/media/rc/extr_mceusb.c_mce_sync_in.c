
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mceusb_dev {int usb_ep_in; } ;


 int MCEUSB_RX ;
 int mce_request_packet (struct mceusb_dev*,int ,unsigned char*,int,int ) ;

__attribute__((used)) static void mce_sync_in(struct mceusb_dev *ir, unsigned char *data, int size)
{
 mce_request_packet(ir, ir->usb_ep_in, data, size, MCEUSB_RX);
}
