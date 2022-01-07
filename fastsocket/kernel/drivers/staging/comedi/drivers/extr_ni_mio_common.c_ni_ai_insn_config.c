
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; } ;
struct TYPE_3__ {unsigned int ai_calib_source; } ;


 int Cal_Gain_Select_611x ;
 int Calibration_Channel_6143 ;
 int EINVAL ;


 unsigned int MSeries_AI_Bypass_Cal_Sel_Neg_Mask ;
 unsigned int MSeries_AI_Bypass_Cal_Sel_Pos_Mask ;
 unsigned int MSeries_AI_Bypass_Mode_Mux_Mask ;
 unsigned int MSeries_AO_Bypass_AO_Cal_Sel_Mask ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_ai_config_analog_trig (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,unsigned int*) ;
 int ni_reg_611x ;
 int ni_reg_6143 ;
 int ni_reg_m_series_mask ;
 int ni_writeb (unsigned int,int ) ;
 int ni_writew (unsigned int,int ) ;

__attribute__((used)) static int ni_ai_insn_config(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn, unsigned int *data)
{
 if (insn->n < 1)
  return -EINVAL;

 switch (data[0]) {
 case 128:
  return ni_ai_config_analog_trig(dev, s, insn, data);
 case 129:
  if (boardtype.reg_type & ni_reg_m_series_mask) {
   if (data[1] & ~(MSeries_AI_Bypass_Cal_Sel_Pos_Mask |
     MSeries_AI_Bypass_Cal_Sel_Neg_Mask |
     MSeries_AI_Bypass_Mode_Mux_Mask |
     MSeries_AO_Bypass_AO_Cal_Sel_Mask)) {
    return -EINVAL;
   }
   devpriv->ai_calib_source = data[1];
  } else if (boardtype.reg_type == ni_reg_6143) {
   unsigned int calib_source;

   calib_source = data[1] & 0xf;

   if (calib_source > 0xF)
    return -EINVAL;

   devpriv->ai_calib_source = calib_source;
   ni_writew(calib_source, Calibration_Channel_6143);
  } else {
   unsigned int calib_source;
   unsigned int calib_source_adjust;

   calib_source = data[1] & 0xf;
   calib_source_adjust = (data[1] >> 4) & 0xff;

   if (calib_source >= 8)
    return -EINVAL;
   devpriv->ai_calib_source = calib_source;
   if (boardtype.reg_type == ni_reg_611x) {
    ni_writeb(calib_source_adjust,
       Cal_Gain_Select_611x);
   }
  }
  return 2;
 default:
  break;
 }

 return -EINVAL;
}
