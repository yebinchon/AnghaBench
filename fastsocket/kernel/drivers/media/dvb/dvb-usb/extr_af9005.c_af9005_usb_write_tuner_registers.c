
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int AF9005_CMD_WRITE ;
 int AF9005_TUNER_REG ;
 int af9005_generic_read_write (struct dvb_usb_device*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int af9005_usb_write_tuner_registers(struct dvb_usb_device *d,
         u16 reg, u8 * values, int len)
{
 return af9005_generic_read_write(d, reg,
      AF9005_CMD_WRITE,
      AF9005_TUNER_REG, values, len);
}
