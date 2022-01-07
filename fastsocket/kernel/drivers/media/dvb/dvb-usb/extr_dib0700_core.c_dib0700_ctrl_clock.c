
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int dummy; } ;


 int EINVAL ;
 int dib0700_set_clock (struct dvb_usb_device*,int,int ,int,int ,int,int,int ,int) ;

int dib0700_ctrl_clock(struct dvb_usb_device *d, u32 clk_MHz, u8 clock_out_gp3)
{
 switch (clk_MHz) {
  case 72: dib0700_set_clock(d, 1, 0, 1, clock_out_gp3, 2, 24, 0, 0x4c); break;
  default: return -EINVAL;
 }
 return 0;
}
