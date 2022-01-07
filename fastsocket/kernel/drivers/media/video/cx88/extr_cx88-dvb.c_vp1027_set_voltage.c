
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



 int cx_write (int ,int) ;
 int dprintk (int,char*) ;
 int stub1 (struct dvb_frontend*,int ) ;

__attribute__((used)) static int vp1027_set_voltage(struct dvb_frontend *fe,
        fe_sec_voltage_t voltage)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 struct cx88_core *core = dev->core;

 switch (voltage) {
 case 130:
  dprintk(1, "LNB SEC Voltage=13\n");
  cx_write(MO_GP0_IO, 0x00001220);
  break;
 case 129:
  dprintk(1, "LNB SEC Voltage=18\n");
  cx_write(MO_GP0_IO, 0x00001222);
  break;
 case 128:
  dprintk(1, "LNB Voltage OFF\n");
  cx_write(MO_GP0_IO, 0x00001230);
  break;
 }

 if (core->prev_set_voltage)
  return core->prev_set_voltage(fe, voltage);
 return 0;
}
