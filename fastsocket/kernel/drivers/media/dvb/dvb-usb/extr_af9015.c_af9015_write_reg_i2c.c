
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct req_t {scalar_t__ member_1; int member_3; int member_4; int member_5; scalar_t__* member_6; int addr_len; int member_2; int member_0; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ demod_address; } ;


 int WRITE_I2C ;
 TYPE_1__* af9015_af9013_config ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;

__attribute__((used)) static int af9015_write_reg_i2c(struct dvb_usb_device *d, u8 addr, u16 reg,
 u8 val)
{
 struct req_t req = {WRITE_I2C, addr, reg, 1, 1, 1, &val};

 if (addr == af9015_af9013_config[0].demod_address ||
     addr == af9015_af9013_config[1].demod_address)
  req.addr_len = 3;

 return af9015_ctrl_msg(d, &req);
}
