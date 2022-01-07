
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {unsigned int n_chan; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int reg_type; } ;
struct TYPE_3__ {int ao_cmd1; int ao_cmd2; int ao_mode1; int ao_mode2; int ao_mode3; int ao_trigger_select; int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;


 int AO_BC_Source_Select ;
 int AO_Command_1_Register ;
 int AO_Command_2_Register ;
 int AO_Configuration_End ;
 int AO_Configuration_Start ;
 int AO_Disarm ;
 int AO_Immediate_671x ;
 int AO_Last_Gate_Disable ;
 int AO_Misc_611x ;
 int AO_Mode_1_Register ;
 int AO_Mode_2_Register ;
 int AO_Mode_3_Register ;
 int AO_Output_Control_Register ;
 int AO_Personal_Register ;
 int AO_Start_Select_Register ;
 int AO_TMRDACWR_Pulse_Width ;
 int AO_Trigger_Select_Register ;
 int AO_UPDATE_Pulse_Width ;
 unsigned int CLEAR_WG ;
 int Interrupt_B_Ack_Register ;
 int Interrupt_B_Enable_Register ;
 int Joint_Reset_Register ;
 int ao_win_out (unsigned int,int ) ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_reg_6xxx_mask ;
 int ni_reg_m_series_mask ;
 int ni_release_ao_mite_channel (struct comedi_device*) ;
 int ni_set_bits (struct comedi_device*,int ,int ,int ) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub10 (struct comedi_device*,int,int ) ;
 int stub11 (struct comedi_device*,int,int ) ;
 int stub12 (struct comedi_device*,int,int ) ;
 int stub13 (struct comedi_device*,int,int ) ;
 int stub14 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int stub7 (struct comedi_device*,int,int ) ;
 int stub8 (struct comedi_device*,int,int ) ;
 int stub9 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ao_reset(struct comedi_device *dev, struct comedi_subdevice *s)
{






 ni_release_ao_mite_channel(dev);

 devpriv->stc_writew(dev, AO_Configuration_Start, Joint_Reset_Register);
 devpriv->stc_writew(dev, AO_Disarm, AO_Command_1_Register);
 ni_set_bits(dev, Interrupt_B_Enable_Register, ~0, 0);
 devpriv->stc_writew(dev, AO_BC_Source_Select, AO_Personal_Register);
 devpriv->stc_writew(dev, 0x3f98, Interrupt_B_Ack_Register);
 devpriv->stc_writew(dev, AO_BC_Source_Select | AO_UPDATE_Pulse_Width |
       AO_TMRDACWR_Pulse_Width, AO_Personal_Register);
 devpriv->stc_writew(dev, 0, AO_Output_Control_Register);
 devpriv->stc_writew(dev, 0, AO_Start_Select_Register);
 devpriv->ao_cmd1 = 0;
 devpriv->stc_writew(dev, devpriv->ao_cmd1, AO_Command_1_Register);
 devpriv->ao_cmd2 = 0;
 devpriv->stc_writew(dev, devpriv->ao_cmd2, AO_Command_2_Register);
 devpriv->ao_mode1 = 0;
 devpriv->stc_writew(dev, devpriv->ao_mode1, AO_Mode_1_Register);
 devpriv->ao_mode2 = 0;
 devpriv->stc_writew(dev, devpriv->ao_mode2, AO_Mode_2_Register);
 if (boardtype.reg_type & ni_reg_m_series_mask)
  devpriv->ao_mode3 = AO_Last_Gate_Disable;
 else
  devpriv->ao_mode3 = 0;
 devpriv->stc_writew(dev, devpriv->ao_mode3, AO_Mode_3_Register);
 devpriv->ao_trigger_select = 0;
 devpriv->stc_writew(dev, devpriv->ao_trigger_select,
       AO_Trigger_Select_Register);
 if (boardtype.reg_type & ni_reg_6xxx_mask) {
  unsigned immediate_bits = 0;
  unsigned i;
  for (i = 0; i < s->n_chan; ++i) {
   immediate_bits |= 1 << i;
  }
  ao_win_out(immediate_bits, AO_Immediate_671x);
  ao_win_out(CLEAR_WG, AO_Misc_611x);
 }
 devpriv->stc_writew(dev, AO_Configuration_End, Joint_Reset_Register);

 return 0;
}
