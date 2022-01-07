
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
typedef int fe_bandwidth_t ;





 int EINVAL ;
 int af9005_write_register_bits (struct dvb_usb_device*,int ,int ,int ,int) ;
 int err (char*,int) ;
 int reg_bw_len ;
 int reg_bw_pos ;
 int xd_g_reg_bw ;

__attribute__((used)) static int af9005_fe_select_bw(struct dvb_usb_device *d, fe_bandwidth_t bw)
{
 u8 temp;
 switch (bw) {
 case 130:
  temp = 0;
  break;
 case 129:
  temp = 1;
  break;
 case 128:
  temp = 2;
  break;
 default:
  err("Invalid bandwith %d.", bw);
  return -EINVAL;
 }
 return af9005_write_register_bits(d, xd_g_reg_bw, reg_bw_pos,
       reg_bw_len, temp);
}
