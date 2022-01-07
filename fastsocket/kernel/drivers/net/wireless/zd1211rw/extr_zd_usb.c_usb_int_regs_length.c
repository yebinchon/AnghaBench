
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_int_regs {int dummy; } ;
struct reg_data {int dummy; } ;



__attribute__((used)) static int usb_int_regs_length(unsigned int count)
{
 return sizeof(struct usb_int_regs) + count * sizeof(struct reg_data);
}
