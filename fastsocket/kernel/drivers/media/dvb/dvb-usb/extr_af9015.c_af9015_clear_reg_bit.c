
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9015_do_reg_bit (struct dvb_usb_device*,int ,int ,int ) ;

__attribute__((used)) static int af9015_clear_reg_bit(struct dvb_usb_device *d, u16 addr, u8 bit)
{
 return af9015_do_reg_bit(d, addr, bit, 0);
}
