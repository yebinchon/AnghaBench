
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {int dummy; } ;
typedef int fe_sec_voltage_t ;





 int f300_xfer (struct dvb_frontend*,int*) ;

int f300_set_voltage(struct dvb_frontend *fe, fe_sec_voltage_t voltage)
{
 u8 buf[16];

 buf[0] = 0x05;
 buf[1] = 0x38;
 buf[2] = 0x01;

 switch (voltage) {
 case 130:
  buf[3] = 0x01;
  buf[4] = 0x02;
  buf[5] = 0x00;
  break;
 case 129:
  buf[3] = 0x01;
  buf[4] = 0x02;
  buf[5] = 0x01;
  break;
 case 128:
  buf[3] = 0x00;
  buf[4] = 0x00;
  buf[5] = 0x00;
  break;
 }

 return f300_xfer(fe, buf);
}
