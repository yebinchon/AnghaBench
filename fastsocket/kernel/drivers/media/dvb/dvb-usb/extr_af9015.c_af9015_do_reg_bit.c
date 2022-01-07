
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9015_read_reg (struct dvb_usb_device*,int ,int*) ;
 int af9015_write_reg (struct dvb_usb_device*,int ,int) ;

__attribute__((used)) static int af9015_do_reg_bit(struct dvb_usb_device *d, u16 addr, u8 bit, u8 op)
{
 int ret;
 u8 val, mask = 0x01;

 ret = af9015_read_reg(d, addr, &val);
 if (ret)
  return ret;

 mask <<= bit;
 if (op) {

  val |= mask;
 } else {

  mask ^= 0xff;
  val &= mask;
 }

 return af9015_write_reg(d, addr, val);
}
