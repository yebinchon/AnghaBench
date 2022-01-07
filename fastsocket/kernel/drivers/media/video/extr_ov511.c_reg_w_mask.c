
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;


 int reg_r (struct usb_ov511*,unsigned char) ;
 int reg_w (struct usb_ov511*,unsigned char,unsigned char) ;

__attribute__((used)) static int
reg_w_mask(struct usb_ov511 *ov,
    unsigned char reg,
    unsigned char value,
    unsigned char mask)
{
 int ret;
 unsigned char oldval, newval;

 ret = reg_r(ov, reg);
 if (ret < 0)
  return ret;

 oldval = (unsigned char) ret;
 oldval &= (~mask);
 value &= mask;
 newval = oldval | value;

 return (reg_w(ov, reg, newval));
}
