
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ reg_type; } ;
struct TYPE_3__ {int (* stc_writew ) (struct comedi_device*,int,int ) ;} ;


 int ADC_FIFO_Clear ;
 int AIFIFO_Control_6143 ;
 int AIFIFO_Status_6143 ;
 int AI_CONVERT_Pulse ;
 int AI_Command_1_Register ;
 int M_Offset_Static_AI_Control (int ) ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_readl (int ) ;
 scalar_t__ ni_reg_6143 ;
 scalar_t__ ni_reg_625x ;
 int ni_writeb (int,int ) ;
 int ni_writel (int,int ) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int,int ) ;

__attribute__((used)) static void ni_clear_ai_fifo(struct comedi_device *dev)
{
 if (boardtype.reg_type == ni_reg_6143) {

  ni_writel(0x10, AIFIFO_Control_6143);
  ni_writel(0x00, AIFIFO_Control_6143);
  while (ni_readl(AIFIFO_Status_6143) & 0x10) ;
 } else {
  devpriv->stc_writew(dev, 1, ADC_FIFO_Clear);
  if (boardtype.reg_type == ni_reg_625x) {
   ni_writeb(0, M_Offset_Static_AI_Control(0));
   ni_writeb(1, M_Offset_Static_AI_Control(0));
  }
 }
}
