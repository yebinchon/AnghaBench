
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct cx88_core* core; } ;
typedef int fe_sec_tone_mode_t ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;


 int EINVAL ;
 int MO_GP0_IO ;


 int cx_clear (int ,int) ;
 int cx_set (int ,int) ;

__attribute__((used)) static int samsung_smt_7020_set_tone(struct dvb_frontend *fe,
 fe_sec_tone_mode_t tone)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 struct cx88_core *core = dev->core;

 cx_set(MO_GP0_IO, 0x0800);

 switch (tone) {
 case 128:
  cx_set(MO_GP0_IO, 0x08);
  break;
 case 129:
  cx_clear(MO_GP0_IO, 0x08);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
