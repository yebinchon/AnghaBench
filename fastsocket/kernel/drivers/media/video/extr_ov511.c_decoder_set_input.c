
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int sensor; } ;


 int EINVAL ;
 int PDEBUG (int,char*,int) ;

 int i2c_w_mask (struct usb_ov511*,int,int,int) ;

__attribute__((used)) static int
decoder_set_input(struct usb_ov511 *ov, int input)
{
 PDEBUG(4, "port %d", input);

 switch (ov->sensor) {
 case 128:
 {

  i2c_w_mask(ov, 0x02, input, 0x07);

  i2c_w_mask(ov, 0x09, (input > 3) ? 0x80:0x00, 0x80);
  break;
 }
 default:
  return -EINVAL;
 }

 return 0;
}
