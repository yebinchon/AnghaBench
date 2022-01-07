
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int reg_type; } ;
struct TYPE_5__ {int ao_mode3; int (* stc_readw ) (struct comedi_device*,int ) ;int ao_cmd1; int ao_cmd2; int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;
struct TYPE_4__ {int * inttrig; } ;


 int AO_BC_Arm ;
 int AO_Command_1_Register ;
 int AO_Command_2_Register ;
 int AO_DAC0_Update_Mode ;
 int AO_DAC1_Update_Mode ;
 int AO_Error_Interrupt_Ack ;
 int AO_Error_Interrupt_Enable ;
 int AO_FIFO_Interrupt_Enable ;
 int AO_FIFO_Offset_Load_611x ;
 int AO_Mode_3_Register ;
 int AO_Not_An_UPDATE ;
 int AO_START1_Pulse ;
 int AO_TMRDACWRs_In_Progress_St ;
 int AO_UC_Arm ;
 int AO_UI_Arm ;
 int DAC_FIFO_Clear ;
 int EINVAL ;
 int EIO ;
 int EPIPE ;
 int Interrupt_B_Ack_Register ;
 int Interrupt_B_Enable_Register ;
 int Joint_Status_2_Register ;
 TYPE_3__ boardtype ;
 int comedi_error (struct comedi_device*,char*) ;
 TYPE_2__* devpriv ;
 int ni_ao_prep_fifo (struct comedi_device*,struct comedi_subdevice*) ;
 int ni_ao_setup_MITE_dma (struct comedi_device*) ;
 int ni_ao_wait_for_dma_load (struct comedi_device*) ;
 int ni_ao_win_outl (struct comedi_device*,int,int ) ;
 int ni_reg_6xxx_mask ;
 int ni_set_bits (struct comedi_device*,int ,int,int) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int stub7 (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int ni_ao_inttrig(struct comedi_device *dev, struct comedi_subdevice *s,
    unsigned int trignum)
{
 int ret;
 int interrupt_b_bits;
 int i;
 static const int timeout = 1000;

 if (trignum != 0)
  return -EINVAL;




 s->async->inttrig = ((void*)0);

 ni_set_bits(dev, Interrupt_B_Enable_Register,
      AO_FIFO_Interrupt_Enable | AO_Error_Interrupt_Enable, 0);
 interrupt_b_bits = AO_Error_Interrupt_Enable;
 ret = ni_ao_prep_fifo(dev, s);
 if (ret == 0)
  return -EPIPE;

 interrupt_b_bits |= AO_FIFO_Interrupt_Enable;


 devpriv->stc_writew(dev, devpriv->ao_mode3 | AO_Not_An_UPDATE,
       AO_Mode_3_Register);
 devpriv->stc_writew(dev, devpriv->ao_mode3, AO_Mode_3_Register);

 for (i = 0; i < timeout; i++) {
  udelay(1);
  if ((devpriv->stc_readw(dev,
     Joint_Status_2_Register) &
       AO_TMRDACWRs_In_Progress_St) == 0)
   break;
 }
 if (i == timeout) {
  comedi_error(dev,
        "timed out waiting for AO_TMRDACWRs_In_Progress_St to clear");
  return -EIO;
 }

 devpriv->stc_writew(dev, AO_Error_Interrupt_Ack,
       Interrupt_B_Ack_Register);

 ni_set_bits(dev, Interrupt_B_Enable_Register, interrupt_b_bits, 1);

 devpriv->stc_writew(dev,
       devpriv->ao_cmd1 | AO_UI_Arm | AO_UC_Arm | AO_BC_Arm
       | AO_DAC1_Update_Mode | AO_DAC0_Update_Mode,
       AO_Command_1_Register);

 devpriv->stc_writew(dev, devpriv->ao_cmd2 | AO_START1_Pulse,
       AO_Command_2_Register);

 return 0;
}
