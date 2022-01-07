
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ irq; } ;
struct comedi_cmd {int chanlist_len; int start_src; int start_arg; int stop_src; int scan_begin_src; int scan_begin_arg; int convert_src; int convert_arg; int flags; int stop_arg; int chanlist; } ;
struct TYPE_6__ {scalar_t__ reg_type; } ;
struct TYPE_5__ {unsigned int an_trig_etc_reg; int ai_cmd2; int ai_continuous; int aimode; int (* stc_writew ) (struct comedi_device*,int,int ) ;int int_a_enable_reg; int (* stc_writel ) (struct comedi_device*,int,int ) ;} ;
struct TYPE_4__ {int * inttrig; struct comedi_cmd cmd; } ;





 int AI_CONVERT_Source_Polarity ;
 int AI_CONVERT_Source_Select (int ) ;
 int AI_Command_1_Register ;
 int AI_Command_2_Register ;
 int AI_Configuration_End ;
 unsigned int AI_Configuration_Start ;
 int AI_Continuous ;
 int AI_DIV_Arm ;
 int AI_End_On_End_Of_Scan ;
 int AI_Error_Interrupt_Ack ;
 int AI_Error_Interrupt_Enable ;
 int AI_FIFO_Interrupt_Enable ;
 int AI_FIFO_Mode_HF ;
 int AI_FIFO_Mode_HF_to_E ;
 int AI_FIFO_Mode_NE ;
 int AI_Mode_1_Register ;
 int AI_Mode_1_Reserved ;
 int AI_Mode_2_Register ;
 int AI_Mode_3_Register ;
 int AI_Pre_Trigger ;
 int AI_SC_Arm ;
 int AI_SC_Gate_Enable ;
 int AI_SC_Initial_Load_Source ;
 int AI_SC_Load ;
 int AI_SC_Load_A_Registers ;
 int AI_SC_Reload_Mode ;
 int AI_SC_TC_Error_Confirm ;
 int AI_SC_TC_Interrupt_Ack ;
 int AI_SC_TC_Interrupt_Enable ;
 int AI_SI2_Arm ;
 int AI_SI2_Initial_Load_Source ;
 int AI_SI2_Load ;
 int AI_SI2_Load_A_Register ;
 int AI_SI2_Load_B_Register ;
 int AI_SI2_Reload_Mode ;
 int AI_SI_Arm ;
 int AI_SI_Initial_Load_Source ;
 int AI_SI_Load ;
 int AI_SI_Load_A_Registers ;
 int AI_SI_Reload_Mode (int ) ;
 unsigned int AI_START1_Edge ;
 int AI_START1_Interrupt_Ack ;
 unsigned int AI_START1_Polarity ;
 int AI_START1_Pulse ;
 unsigned int AI_START1_Select (int) ;
 unsigned int AI_START1_Sync ;
 int AI_START2_Interrupt_Ack ;
 unsigned int AI_START2_Select (int ) ;
 int AI_START_Edge ;
 int AI_START_Interrupt_Ack ;
 int AI_START_Polarity ;
 int AI_START_STOP_Select_Register ;
 int AI_START_Select (int ) ;
 int AI_START_Sync ;
 int AI_STOP_Edge ;
 int AI_STOP_Interrupt_Ack ;
 int AI_STOP_Interrupt_Enable ;
 int AI_STOP_Polarity ;
 int AI_STOP_Select (int) ;
 int AI_STOP_Sync ;
 int AI_Start_Stop ;
 int AI_Start_Stop_Gate_Enable ;
 int AI_Trigger_Once ;
 int AI_Trigger_Select_Register ;
 unsigned int Analog_Trigger_Enable ;
 int Analog_Trigger_Etc_Register ;
 int CR_CHAN (int) ;
 int CR_EDGE ;
 int CR_INVERT ;
 int EIO ;
 int Interrupt_A_Ack_Register ;
 int Interrupt_A_Enable_Register ;
 int Joint_Reset_Register ;
 int MDPRINTK (char*,...) ;





 int TRIG_ROUND_NEAREST ;

 int TRIG_WAKE_EOS ;
 TYPE_3__ boardtype ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int ni_ai_inttrig ;
 int ni_ai_setup_MITE_dma (struct comedi_device*) ;
 int ni_clear_ai_fifo (struct comedi_device*) ;
 int ni_load_channelgain_list (struct comedi_device*,int,int ) ;
 int ni_ns_to_timer (struct comedi_device*,int,int ) ;
 scalar_t__ ni_reg_611x ;
 scalar_t__ ni_reg_6143 ;
 int ni_set_bits (struct comedi_device*,int ,int,int) ;
 unsigned int num_adc_stages_611x ;
 int stub1 (struct comedi_device*,unsigned int,int ) ;
 int stub10 (struct comedi_device*,unsigned int,int ) ;
 int stub11 (struct comedi_device*,int,int ) ;
 int stub12 (struct comedi_device*,int,int ) ;
 int stub13 (struct comedi_device*,int,int ) ;
 int stub14 (struct comedi_device*,int,int ) ;
 int stub15 (struct comedi_device*,int,int ) ;
 int stub16 (struct comedi_device*,int,int ) ;
 int stub17 (struct comedi_device*,int,int ) ;
 int stub18 (struct comedi_device*,int,int ) ;
 int stub19 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,unsigned int,int ) ;
 int stub20 (struct comedi_device*,int,int ) ;
 int stub21 (struct comedi_device*,int,int ) ;
 int stub22 (struct comedi_device*,int,int ) ;
 int stub23 (struct comedi_device*,int,int ) ;
 int stub24 (struct comedi_device*,int,int ) ;
 int stub25 (struct comedi_device*,int,int ) ;
 int stub26 (struct comedi_device*,int,int ) ;
 int stub27 (struct comedi_device*,int,int ) ;
 int stub28 (struct comedi_device*,int,int ) ;
 int stub29 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,unsigned int,int ) ;
 int stub30 (struct comedi_device*,int,int ) ;
 int stub31 (struct comedi_device*,int,int ) ;
 int stub32 (struct comedi_device*,int,int ) ;
 int stub33 (struct comedi_device*,int,int ) ;
 int stub34 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,unsigned int,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int stub7 (struct comedi_device*,unsigned int,int ) ;
 int stub8 (struct comedi_device*,int,int ) ;
 int stub9 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int ni_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 const struct comedi_cmd *cmd = &s->async->cmd;
 int timer;
 int mode1 = 0;
 int mode2 = 0;
 int start_stop_select = 0;
 unsigned int stop_count;
 int interrupt_a_enable = 0;

 MDPRINTK("ni_ai_cmd\n");
 if (dev->irq == 0) {
  comedi_error(dev, "cannot run command without an irq");
  return -EIO;
 }
 ni_clear_ai_fifo(dev);

 ni_load_channelgain_list(dev, cmd->chanlist_len, cmd->chanlist);


 devpriv->stc_writew(dev, AI_Configuration_Start, Joint_Reset_Register);



 devpriv->an_trig_etc_reg &= ~Analog_Trigger_Enable;
 devpriv->stc_writew(dev, devpriv->an_trig_etc_reg,
       Analog_Trigger_Etc_Register);

 switch (cmd->start_src) {
 case 131:
 case 129:
  devpriv->stc_writew(dev, AI_START2_Select(0) |
        AI_START1_Sync | AI_START1_Edge |
        AI_START1_Select(0),
        AI_Trigger_Select_Register);
  break;
 case 132:
  {
   int chan = CR_CHAN(cmd->start_arg);
   unsigned int bits = AI_START2_Select(0) |
       AI_START1_Sync | AI_START1_Select(chan + 1);

   if (cmd->start_arg & CR_INVERT)
    bits |= AI_START1_Polarity;
   if (cmd->start_arg & CR_EDGE)
    bits |= AI_START1_Edge;
   devpriv->stc_writew(dev, bits,
         AI_Trigger_Select_Register);
   break;
  }
 }

 mode2 &= ~AI_Pre_Trigger;
 mode2 &= ~AI_SC_Initial_Load_Source;
 mode2 &= ~AI_SC_Reload_Mode;
 devpriv->stc_writew(dev, mode2, AI_Mode_2_Register);

 if (cmd->chanlist_len == 1 || (boardtype.reg_type == ni_reg_611x)
     || (boardtype.reg_type == ni_reg_6143)) {
  start_stop_select |= AI_STOP_Polarity;
  start_stop_select |= AI_STOP_Select(31);
  start_stop_select |= AI_STOP_Sync;
 } else {
  start_stop_select |= AI_STOP_Select(19);
 }
 devpriv->stc_writew(dev, start_stop_select,
       AI_START_STOP_Select_Register);

 devpriv->ai_cmd2 = 0;
 switch (cmd->stop_src) {
 case 133:
  stop_count = cmd->stop_arg - 1;

  if (boardtype.reg_type == ni_reg_611x) {

   stop_count += num_adc_stages_611x;
  }

  devpriv->stc_writel(dev, stop_count, AI_SC_Load_A_Registers);

  mode1 |= AI_Start_Stop | AI_Mode_1_Reserved | AI_Trigger_Once;
  devpriv->stc_writew(dev, mode1, AI_Mode_1_Register);

  devpriv->stc_writew(dev, AI_SC_Load, AI_Command_1_Register);

  devpriv->ai_continuous = 0;
  if (stop_count == 0) {
   devpriv->ai_cmd2 |= AI_End_On_End_Of_Scan;
   interrupt_a_enable |= AI_STOP_Interrupt_Enable;

   if (cmd->chanlist_len > 1)
    start_stop_select |=
        AI_STOP_Polarity | AI_STOP_Edge;
  }
  break;
 case 130:

  devpriv->stc_writel(dev, 0, AI_SC_Load_A_Registers);

  mode1 |= AI_Start_Stop | AI_Mode_1_Reserved | AI_Continuous;
  devpriv->stc_writew(dev, mode1, AI_Mode_1_Register);


  devpriv->stc_writew(dev, AI_SC_Load, AI_Command_1_Register);

  devpriv->ai_continuous = 1;

  break;
 }

 switch (cmd->scan_begin_src) {
 case 128:
  start_stop_select |= AI_START_Edge | AI_START_Sync;
  devpriv->stc_writew(dev, start_stop_select,
        AI_START_STOP_Select_Register);

  mode2 |= AI_SI_Reload_Mode(0);

  mode2 &= ~AI_SI_Initial_Load_Source;

  devpriv->stc_writew(dev, mode2, AI_Mode_2_Register);


  timer = ni_ns_to_timer(dev, cmd->scan_begin_arg,
           TRIG_ROUND_NEAREST);
  devpriv->stc_writel(dev, timer, AI_SI_Load_A_Registers);
  devpriv->stc_writew(dev, AI_SI_Load, AI_Command_1_Register);
  break;
 case 132:
  if (cmd->scan_begin_arg & CR_EDGE)
   start_stop_select |= AI_START_Edge;

  if (cmd->scan_begin_arg & CR_INVERT)
   start_stop_select |= AI_START_Polarity;
  if (cmd->scan_begin_src != cmd->convert_src ||
      (cmd->scan_begin_arg & ~CR_EDGE) !=
      (cmd->convert_arg & ~CR_EDGE))
   start_stop_select |= AI_START_Sync;
  start_stop_select |=
      AI_START_Select(1 + CR_CHAN(cmd->scan_begin_arg));
  devpriv->stc_writew(dev, start_stop_select,
        AI_START_STOP_Select_Register);
  break;
 }

 switch (cmd->convert_src) {
 case 128:
 case 129:
  if (cmd->convert_arg == 0 || cmd->convert_src == 129)
   timer = 1;
  else
   timer = ni_ns_to_timer(dev, cmd->convert_arg,
            TRIG_ROUND_NEAREST);
  devpriv->stc_writew(dev, 1, AI_SI2_Load_A_Register);
  devpriv->stc_writew(dev, timer, AI_SI2_Load_B_Register);



  mode2 &= ~AI_SI2_Initial_Load_Source;
  mode2 |= AI_SI2_Reload_Mode;
  devpriv->stc_writew(dev, mode2, AI_Mode_2_Register);


  devpriv->stc_writew(dev, AI_SI2_Load, AI_Command_1_Register);

  mode2 |= AI_SI2_Reload_Mode;
  mode2 |= AI_SI2_Initial_Load_Source;

  devpriv->stc_writew(dev, mode2, AI_Mode_2_Register);
  break;
 case 132:
  mode1 |= AI_CONVERT_Source_Select(1 + cmd->convert_arg);
  if ((cmd->convert_arg & CR_INVERT) == 0)
   mode1 |= AI_CONVERT_Source_Polarity;
  devpriv->stc_writew(dev, mode1, AI_Mode_1_Register);

  mode2 |= AI_Start_Stop_Gate_Enable | AI_SC_Gate_Enable;
  devpriv->stc_writew(dev, mode2, AI_Mode_2_Register);

  break;
 }

 if (dev->irq) {


  interrupt_a_enable |= AI_Error_Interrupt_Enable |
      AI_SC_TC_Interrupt_Enable;


  interrupt_a_enable |= AI_FIFO_Interrupt_Enable;


  if (cmd->flags & TRIG_WAKE_EOS
      || (devpriv->ai_cmd2 & AI_End_On_End_Of_Scan)) {

   devpriv->aimode = 134;
  } else {
   devpriv->aimode = 136;
  }

  switch (devpriv->aimode) {
  case 136:





   devpriv->stc_writew(dev, AI_FIFO_Mode_HF,
         AI_Mode_3_Register);

   break;
  case 135:

   devpriv->stc_writew(dev, AI_FIFO_Mode_NE,
         AI_Mode_3_Register);
   break;
  case 134:




   devpriv->stc_writew(dev, AI_FIFO_Mode_HF,
         AI_Mode_3_Register);

   interrupt_a_enable |= AI_STOP_Interrupt_Enable;
   break;
  default:
   break;
  }

  devpriv->stc_writew(dev, AI_Error_Interrupt_Ack | AI_STOP_Interrupt_Ack | AI_START_Interrupt_Ack | AI_START2_Interrupt_Ack | AI_START1_Interrupt_Ack | AI_SC_TC_Interrupt_Ack | AI_SC_TC_Error_Confirm, Interrupt_A_Ack_Register);

  ni_set_bits(dev, Interrupt_A_Enable_Register,
       interrupt_a_enable, 1);

  MDPRINTK("Interrupt_A_Enable_Register = 0x%04x\n",
    devpriv->int_a_enable_reg);
 } else {

  ni_set_bits(dev, Interrupt_A_Enable_Register, ~0, 0);


  MDPRINTK("interrupting on nothing\n");
 }


 devpriv->stc_writew(dev, AI_Configuration_End, Joint_Reset_Register);

 switch (cmd->scan_begin_src) {
 case 128:
  devpriv->stc_writew(dev,
        AI_SI2_Arm | AI_SI_Arm | AI_DIV_Arm |
        AI_SC_Arm, AI_Command_1_Register);
  break;
 case 132:

  devpriv->stc_writew(dev,
        AI_SI2_Arm | AI_SI_Arm | AI_DIV_Arm |
        AI_SC_Arm, AI_Command_1_Register);
  break;
 }
 switch (cmd->start_src) {
 case 129:

  devpriv->stc_writew(dev, AI_START1_Pulse | devpriv->ai_cmd2,
        AI_Command_2_Register);
  s->async->inttrig = ((void*)0);
  break;
 case 132:
  s->async->inttrig = ((void*)0);
  break;
 case 131:
  s->async->inttrig = &ni_ai_inttrig;
  break;
 }

 MDPRINTK("exit ni_ai_cmd\n");

 return 0;
}
