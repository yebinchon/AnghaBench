
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 int CMD_READSINGLE ;
 scalar_t__ DPR_Params (int) ;
 scalar_t__ DPR_SubSys ;
 TYPE_1__* devpriv ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 unsigned int readw (scalar_t__) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int dt3k_readsingle(struct comedi_device *dev,
        unsigned int subsys, unsigned int chan,
        unsigned int gain)
{
 writew(subsys, devpriv->io_addr + DPR_SubSys);

 writew(chan, devpriv->io_addr + DPR_Params(0));
 writew(gain, devpriv->io_addr + DPR_Params(1));

 dt3k_send_cmd(dev, CMD_READSINGLE);

 return readw(devpriv->io_addr + DPR_Params(2));
}
