
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_4__ {int ai_fifo_depth; } ;
struct TYPE_3__ {int ai_calib_source; scalar_t__ ai_calib_source_enabled; int (* stc_writew ) (struct comedi_device*,int ,int ) ;} ;


 int AIFIFO_Flag_6143 ;
 int Calibration_Channel_6143 ;
 int Calibration_Channel_6143_RelayOff ;
 int EOC_Set_6143 ;
 int Interrupt_Control_Register ;
 int Magic_6143 ;
 int PipelineDelay_6143 ;
 TYPE_2__ boardtype ;
 TYPE_1__* devpriv ;
 int ni_writeb (int,int ) ;
 int ni_writel (int,int ) ;
 int ni_writew (int,int ) ;
 int stub1 (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void init_6143(struct comedi_device *dev)
{

 devpriv->stc_writew(dev, 0, Interrupt_Control_Register);


 ni_writeb(0x00, Magic_6143);
 ni_writeb(0x80, PipelineDelay_6143);
 ni_writeb(0x00, EOC_Set_6143);

 ni_writel(boardtype.ai_fifo_depth / 2, AIFIFO_Flag_6143);


 devpriv->ai_calib_source_enabled = 0;
 ni_writew(devpriv->ai_calib_source | Calibration_Channel_6143_RelayOff,
    Calibration_Channel_6143);
 ni_writew(devpriv->ai_calib_source, Calibration_Channel_6143);
}
