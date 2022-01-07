
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int af9015_write_regs (struct dvb_usb_device*,int ,int *,int) ;

__attribute__((used)) static int af9015_write_reg(struct dvb_usb_device *d, u16 addr, u8 val)
{
 return af9015_write_regs(d, addr, &val, 1);
}
