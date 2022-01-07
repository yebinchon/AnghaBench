
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;


 scalar_t__ Clear_Register ;
 int ClrEdge ;
 int ClrOverflow ;
 int EdgeIntEnable ;
 int FallingEdgeIntEnable ;
 int MasterInterruptEnable ;
 scalar_t__ Master_Interrupt_Control ;
 int RisingEdgeIntEnable ;
 TYPE_2__* devpriv ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int ni6527_intr_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{


 writeb(ClrEdge | ClrOverflow,
        devpriv->mite->daq_io_addr + Clear_Register);
 writeb(FallingEdgeIntEnable | RisingEdgeIntEnable |
        MasterInterruptEnable | EdgeIntEnable,
        devpriv->mite->daq_io_addr + Master_Interrupt_Control);

 return 0;
}
