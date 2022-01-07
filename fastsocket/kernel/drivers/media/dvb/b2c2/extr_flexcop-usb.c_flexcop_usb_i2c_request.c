
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct flexcop_i2c_adapter {int dummy; } ;
typedef scalar_t__ flexcop_access_op_t ;


 int B2C2_USB_I2C_REQUEST ;
 scalar_t__ FC_READ ;
 int USB_FUNC_I2C_READ ;
 int USB_FUNC_I2C_WRITE ;
 int flexcop_usb_i2c_req (struct flexcop_i2c_adapter*,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static int flexcop_usb_i2c_request(struct flexcop_i2c_adapter *i2c,
  flexcop_access_op_t op, u8 chipaddr, u8 addr, u8 *buf, u16 len)
{
 if (op == FC_READ)
  return flexcop_usb_i2c_req(i2c, B2C2_USB_I2C_REQUEST,
    USB_FUNC_I2C_READ, chipaddr, addr, buf, len);
 else
  return flexcop_usb_i2c_req(i2c, B2C2_USB_I2C_REQUEST,
    USB_FUNC_I2C_WRITE, chipaddr, addr, buf, len);
}
