
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; } ;
struct comedi_cmd {int chanlist_len; int* chanlist; int stop_src; int start_src; int start_arg; int stop_arg; int scan_begin_src; int scan_begin_arg; int scan_end_arg; } ;
struct TYPE_6__ {int reg_type; scalar_t__ ao_fifo_depth; } ;
struct TYPE_5__ {int ao_mode1; int ao_trigger_select; int ao_mode3; int ao_mode2; int ao_cmd2; int (* stc_writew ) (struct comedi_device*,int,int ) ;int (* stc_writel ) (struct comedi_device*,unsigned int,int ) ;} ;
struct TYPE_4__ {int * inttrig; struct comedi_cmd cmd; } ;


 int AO_AOFREQ_Enable ;
 int AO_BC_Gate_Enable ;
 int AO_BC_Initial_Load_Source ;
 int AO_BC_Load ;
 int AO_BC_Load_A_Register ;
 int AO_BC_Source_Select ;
 int AO_BC_TC_Interrupt_Ack ;
 int AO_BC_TC_Interrupt_Enable ;
 int AO_Command_1_Register ;
 int AO_Command_2_Register ;
 int AO_Configuration_End ;
 int AO_Configuration_Start ;
 int AO_Continuous ;
 int AO_DAC0_Update_Mode ;
 int AO_DAC1_Update_Mode ;
 int AO_DMA_PIO_Control ;
 int AO_Disarm ;
 int AO_FIFO_Enable ;
 int AO_FIFO_Mode_HF ;
 int AO_FIFO_Mode_HF_to_F ;
 int AO_FIFO_Mode_Mask ;
 int AO_FIFO_Retransmit_Enable ;
 int AO_Misc_611x ;
 int AO_Mode_1_Register ;
 int AO_Mode_2_Register ;
 int AO_Mode_3_Register ;
 int AO_Multiple_Channels ;
 unsigned int AO_Number_Of_Channels (int) ;
 int AO_Number_Of_DAC_Packages ;
 int AO_Output_Control_Register ;
 int AO_Personal_Register ;
 int AO_START1_Edge ;
 int AO_START1_Polarity ;
 int AO_START1_Select (int) ;
 int AO_START1_Sync ;
 int AO_Start_Select_Register ;
 int AO_Stop_On_Overrun_Error ;
 int AO_TMRDACWR_Pulse_Width ;
 int AO_Timed_611x ;
 int AO_Trigger_Length ;
 int AO_Trigger_Once ;
 int AO_Trigger_Select_Register ;
 int AO_UC_Initial_Load_Source ;
 int AO_UC_Load ;
 int AO_UC_Load_A_Register ;
 int AO_UI_Initial_Load_Source ;
 int AO_UI_Load ;
 int AO_UI_Load_A_Register ;
 int AO_UI_Reload_Mode (int) ;
 int AO_UI_Source_Polarity ;
 int AO_UI_Source_Select (int) ;
 unsigned int AO_UPDATE_Output_Select (int ) ;
 int AO_UPDATE_Pulse_Width ;
 int AO_UPDATE_Source_Polarity ;
 int AO_UPDATE_Source_Select (int) ;
 int AO_Update_Output_High_Z ;
 int AO_Waveform_Generation_611x ;
 int BUG () ;
 int CLEAR_WG ;
 int CR_CHAN (int) ;
 int CR_EDGE ;
 int CR_INVERT ;
 int EIO ;
 int Interrupt_B_Ack_Register ;
 int Interrupt_B_Enable_Register ;
 int Joint_Reset_Register ;





 int TRIG_ROUND_NEAREST ;

 int ao_win_out (int,int ) ;
 TYPE_3__ boardtype ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int ni_ao_config_chanlist (struct comedi_device*,struct comedi_subdevice*,int*,int,int) ;
 int ni_ao_inttrig ;
 unsigned int ni_ns_to_timer (struct comedi_device*,int,int ) ;
 int ni_reg_6xxx_mask ;
 int ni_reg_m_series_mask ;
 int ni_set_bits (struct comedi_device*,int ,int ,int) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub10 (struct comedi_device*,int,int ) ;
 int stub11 (struct comedi_device*,int,int ) ;
 int stub12 (struct comedi_device*,int,int ) ;
 int stub13 (struct comedi_device*,int,int ) ;
 int stub14 (struct comedi_device*,int,int ) ;
 int stub15 (struct comedi_device*,int,int ) ;
 int stub16 (struct comedi_device*,int,int ) ;
 int stub17 (struct comedi_device*,int,int ) ;
 int stub18 (struct comedi_device*,int,int ) ;
 int stub19 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub20 (struct comedi_device*,int,int ) ;
 int stub21 (struct comedi_device*,int,int ) ;
 int stub22 (struct comedi_device*,int,int ) ;
 int stub23 (struct comedi_device*,int,int ) ;
 int stub24 (struct comedi_device*,int,int ) ;
 int stub25 (struct comedi_device*,int,int ) ;
 int stub26 (struct comedi_device*,unsigned int,int ) ;
 int stub27 (struct comedi_device*,int,int ) ;
 int stub28 (struct comedi_device*,int,int ) ;
 int stub29 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub30 (struct comedi_device*,unsigned int,int ) ;
 int stub31 (struct comedi_device*,unsigned int,int ) ;
 int stub32 (struct comedi_device*,int,int ) ;
 int stub33 (struct comedi_device*,int,int ) ;
 int stub34 (struct comedi_device*,int,int ) ;
 int stub35 (struct comedi_device*,int,int ) ;
 int stub36 (struct comedi_device*,int,int ) ;
 int stub37 (struct comedi_device*,int,int ) ;
 int stub38 (struct comedi_device*,int,int ) ;
 int stub39 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int stub7 (struct comedi_device*,int,int ) ;
 int stub8 (struct comedi_device*,int,int ) ;
 int stub9 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 const struct comedi_cmd *cmd = &s->async->cmd;
 int bits;
 int i;
 unsigned trigvar;

 if (dev->irq == 0) {
  comedi_error(dev, "cannot run command without an irq");
  return -EIO;
 }

 devpriv->stc_writew(dev, AO_Configuration_Start, Joint_Reset_Register);

 devpriv->stc_writew(dev, AO_Disarm, AO_Command_1_Register);

 if (boardtype.reg_type & ni_reg_6xxx_mask) {
  ao_win_out(CLEAR_WG, AO_Misc_611x);

  bits = 0;
  for (i = 0; i < cmd->chanlist_len; i++) {
   int chan;

   chan = CR_CHAN(cmd->chanlist[i]);
   bits |= 1 << chan;
   ao_win_out(chan, AO_Waveform_Generation_611x);
  }
  ao_win_out(bits, AO_Timed_611x);
 }

 ni_ao_config_chanlist(dev, s, cmd->chanlist, cmd->chanlist_len, 1);

 if (cmd->stop_src == 130) {
  devpriv->ao_mode1 |= AO_Continuous;
  devpriv->ao_mode1 &= ~AO_Trigger_Once;
 } else {
  devpriv->ao_mode1 &= ~AO_Continuous;
  devpriv->ao_mode1 |= AO_Trigger_Once;
 }
 devpriv->stc_writew(dev, devpriv->ao_mode1, AO_Mode_1_Register);
 switch (cmd->start_src) {
 case 131:
 case 129:
  devpriv->ao_trigger_select &=
      ~(AO_START1_Polarity | AO_START1_Select(-1));
  devpriv->ao_trigger_select |= AO_START1_Edge | AO_START1_Sync;
  devpriv->stc_writew(dev, devpriv->ao_trigger_select,
        AO_Trigger_Select_Register);
  break;
 case 132:
  devpriv->ao_trigger_select =
      AO_START1_Select(CR_CHAN(cmd->start_arg) + 1);
  if (cmd->start_arg & CR_INVERT)
   devpriv->ao_trigger_select |= AO_START1_Polarity;
  if (cmd->start_arg & CR_EDGE)
   devpriv->ao_trigger_select |= AO_START1_Edge;
  devpriv->stc_writew(dev, devpriv->ao_trigger_select,
        AO_Trigger_Select_Register);
  break;
 default:
  BUG();
  break;
 }
 devpriv->ao_mode3 &= ~AO_Trigger_Length;
 devpriv->stc_writew(dev, devpriv->ao_mode3, AO_Mode_3_Register);

 devpriv->stc_writew(dev, devpriv->ao_mode1, AO_Mode_1_Register);
 devpriv->ao_mode2 &= ~AO_BC_Initial_Load_Source;
 devpriv->stc_writew(dev, devpriv->ao_mode2, AO_Mode_2_Register);
 if (cmd->stop_src == 130) {
  devpriv->stc_writel(dev, 0xffffff, AO_BC_Load_A_Register);
 } else {
  devpriv->stc_writel(dev, 0, AO_BC_Load_A_Register);
 }
 devpriv->stc_writew(dev, AO_BC_Load, AO_Command_1_Register);
 devpriv->ao_mode2 &= ~AO_UC_Initial_Load_Source;
 devpriv->stc_writew(dev, devpriv->ao_mode2, AO_Mode_2_Register);
 switch (cmd->stop_src) {
 case 133:
  if (boardtype.reg_type & ni_reg_m_series_mask) {

   devpriv->stc_writel(dev, cmd->stop_arg - 1,
         AO_UC_Load_A_Register);
   devpriv->stc_writew(dev, AO_UC_Load,
         AO_Command_1_Register);
  } else {
   devpriv->stc_writel(dev, cmd->stop_arg,
         AO_UC_Load_A_Register);
   devpriv->stc_writew(dev, AO_UC_Load,
         AO_Command_1_Register);
   devpriv->stc_writel(dev, cmd->stop_arg - 1,
         AO_UC_Load_A_Register);
  }
  break;
 case 130:
  devpriv->stc_writel(dev, 0xffffff, AO_UC_Load_A_Register);
  devpriv->stc_writew(dev, AO_UC_Load, AO_Command_1_Register);
  devpriv->stc_writel(dev, 0xffffff, AO_UC_Load_A_Register);
  break;
 default:
  devpriv->stc_writel(dev, 0, AO_UC_Load_A_Register);
  devpriv->stc_writew(dev, AO_UC_Load, AO_Command_1_Register);
  devpriv->stc_writel(dev, cmd->stop_arg, AO_UC_Load_A_Register);
 }

 devpriv->ao_mode1 &=
     ~(AO_UI_Source_Select(0x1f) | AO_UI_Source_Polarity |
       AO_UPDATE_Source_Select(0x1f) | AO_UPDATE_Source_Polarity);
 switch (cmd->scan_begin_src) {
 case 128:
  devpriv->ao_cmd2 &= ~AO_BC_Gate_Enable;
  trigvar =
      ni_ns_to_timer(dev, cmd->scan_begin_arg,
       TRIG_ROUND_NEAREST);
  devpriv->stc_writel(dev, 1, AO_UI_Load_A_Register);
  devpriv->stc_writew(dev, AO_UI_Load, AO_Command_1_Register);
  devpriv->stc_writel(dev, trigvar, AO_UI_Load_A_Register);
  break;
 case 132:
  devpriv->ao_mode1 |=
      AO_UPDATE_Source_Select(cmd->scan_begin_arg);
  if (cmd->scan_begin_arg & CR_INVERT)
   devpriv->ao_mode1 |= AO_UPDATE_Source_Polarity;
  devpriv->ao_cmd2 |= AO_BC_Gate_Enable;
  break;
 default:
  BUG();
  break;
 }
 devpriv->stc_writew(dev, devpriv->ao_cmd2, AO_Command_2_Register);
 devpriv->stc_writew(dev, devpriv->ao_mode1, AO_Mode_1_Register);
 devpriv->ao_mode2 &=
     ~(AO_UI_Reload_Mode(3) | AO_UI_Initial_Load_Source);
 devpriv->stc_writew(dev, devpriv->ao_mode2, AO_Mode_2_Register);

 if (cmd->scan_end_arg > 1) {
  devpriv->ao_mode1 |= AO_Multiple_Channels;
  devpriv->stc_writew(dev,
        AO_Number_Of_Channels(cmd->scan_end_arg -
         1) |
        AO_UPDATE_Output_Select
        (AO_Update_Output_High_Z),
        AO_Output_Control_Register);
 } else {
  unsigned bits;
  devpriv->ao_mode1 &= ~AO_Multiple_Channels;
  bits = AO_UPDATE_Output_Select(AO_Update_Output_High_Z);
  if (boardtype.
      reg_type & (ni_reg_m_series_mask | ni_reg_6xxx_mask)) {
   bits |= AO_Number_Of_Channels(0);
  } else {
   bits |=
       AO_Number_Of_Channels(CR_CHAN(cmd->chanlist[0]));
  }
  devpriv->stc_writew(dev, bits, AO_Output_Control_Register);
 }
 devpriv->stc_writew(dev, devpriv->ao_mode1, AO_Mode_1_Register);

 devpriv->stc_writew(dev, AO_DAC0_Update_Mode | AO_DAC1_Update_Mode,
       AO_Command_1_Register);

 devpriv->ao_mode3 |= AO_Stop_On_Overrun_Error;
 devpriv->stc_writew(dev, devpriv->ao_mode3, AO_Mode_3_Register);

 devpriv->ao_mode2 &= ~AO_FIFO_Mode_Mask;



 devpriv->ao_mode2 |= AO_FIFO_Mode_HF;

 devpriv->ao_mode2 &= ~AO_FIFO_Retransmit_Enable;
 devpriv->stc_writew(dev, devpriv->ao_mode2, AO_Mode_2_Register);

 bits = AO_BC_Source_Select | AO_UPDATE_Pulse_Width |
     AO_TMRDACWR_Pulse_Width;
 if (boardtype.ao_fifo_depth)
  bits |= AO_FIFO_Enable;
 else
  bits |= AO_DMA_PIO_Control;






 devpriv->stc_writew(dev, bits, AO_Personal_Register);

 devpriv->stc_writew(dev, AO_AOFREQ_Enable, AO_Start_Select_Register);

 devpriv->stc_writew(dev, AO_Configuration_End, Joint_Reset_Register);

 if (cmd->stop_src == 133) {
  devpriv->stc_writew(dev, AO_BC_TC_Interrupt_Ack,
        Interrupt_B_Ack_Register);
  ni_set_bits(dev, Interrupt_B_Enable_Register,
       AO_BC_TC_Interrupt_Enable, 1);
 }

 s->async->inttrig = &ni_ao_inttrig;

 return 0;
}
