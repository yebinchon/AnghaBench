
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx88_core {int (* prev_set_voltage ) (struct dvb_frontend*,int ) ;} ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef int fe_sec_voltage_t ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;


 int MO_GP0_IO ;
 int SEC_VOLTAGE_OFF ;
 int cx_write (int ,int) ;
 int dprintk (int,char*) ;
 int stub1 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int geniatech_dvbs_set_voltage(struct dvb_frontend *fe,
          fe_sec_voltage_t voltage)
{
 struct cx8802_dev *dev= fe->dvb->priv;
 struct cx88_core *core = dev->core;

 if (voltage == SEC_VOLTAGE_OFF) {
  dprintk(1,"LNB Voltage OFF\n");
  cx_write(MO_GP0_IO, 0x0000efff);
 }

 if (core->prev_set_voltage)
  return core->prev_set_voltage(fe, voltage);
 return 0;
}
