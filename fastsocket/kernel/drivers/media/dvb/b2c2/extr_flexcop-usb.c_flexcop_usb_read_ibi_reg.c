
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flexcop_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ raw; } ;
typedef TYPE_1__ flexcop_ibi_value ;
typedef int flexcop_ibi_register ;


 int flexcop_usb_readwrite_dw (struct flexcop_device*,int ,scalar_t__*,int) ;

__attribute__((used)) static flexcop_ibi_value flexcop_usb_read_ibi_reg(struct flexcop_device *fc,
 flexcop_ibi_register reg)
{
 flexcop_ibi_value val;
 val.raw = 0;
 flexcop_usb_readwrite_dw(fc, reg, &val.raw, 1);
 return val;
}
