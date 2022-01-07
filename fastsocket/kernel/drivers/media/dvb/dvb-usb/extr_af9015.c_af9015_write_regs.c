
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct req_t {int * member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct dvb_usb_device {int dummy; } ;


 int AF9015_I2C_DEMOD ;
 int WRITE_MEMORY ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;

__attribute__((used)) static int af9015_write_regs(struct dvb_usb_device *d, u16 addr, u8 *val,
 u8 len)
{
 struct req_t req = {WRITE_MEMORY, AF9015_I2C_DEMOD, addr, 0, 0, len,
  val};
 return af9015_ctrl_msg(d, &req);
}
