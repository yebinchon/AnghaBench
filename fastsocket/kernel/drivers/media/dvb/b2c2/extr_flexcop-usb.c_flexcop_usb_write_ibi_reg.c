
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flexcop_device {int dummy; } ;
struct TYPE_3__ {int raw; } ;
typedef TYPE_1__ flexcop_ibi_value ;
typedef int flexcop_ibi_register ;


 int flexcop_usb_readwrite_dw (struct flexcop_device*,int ,int *,int ) ;

__attribute__((used)) static int flexcop_usb_write_ibi_reg(struct flexcop_device *fc,
  flexcop_ibi_register reg, flexcop_ibi_value val)
{
 return flexcop_usb_readwrite_dw(fc, reg, &val.raw, 0);
}
