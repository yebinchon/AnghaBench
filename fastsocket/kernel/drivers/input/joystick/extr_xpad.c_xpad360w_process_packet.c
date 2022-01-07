
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usb_xpad {int pad_present; int bulk_out; } ;


 int GFP_ATOMIC ;
 int usb_submit_urb (int ,int ) ;
 int xpad360_process_packet (struct usb_xpad*,int ,unsigned char*) ;

__attribute__((used)) static void xpad360w_process_packet(struct usb_xpad *xpad, u16 cmd, unsigned char *data)
{

 if (data[0] & 0x08) {
  if (data[1] & 0x80) {
   xpad->pad_present = 1;
   usb_submit_urb(xpad->bulk_out, GFP_ATOMIC);
  } else
   xpad->pad_present = 0;
 }


 if (!(data[1] & 0x1))
  return;

 xpad360_process_packet(xpad, cmd, &data[4]);
}
