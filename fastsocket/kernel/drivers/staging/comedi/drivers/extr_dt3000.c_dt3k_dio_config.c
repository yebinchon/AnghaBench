
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 int CMD_CONFIG ;
 scalar_t__ DPR_Params (int) ;
 scalar_t__ DPR_SubSys ;
 int SUBS_DOUT ;
 TYPE_1__* devpriv ;
 int dt3k_send_cmd (struct comedi_device*,int ) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void dt3k_dio_config(struct comedi_device *dev, int bits)
{

 writew(SUBS_DOUT, devpriv->io_addr + DPR_SubSys);

 writew(bits, devpriv->io_addr + DPR_Params(0));






 dt3k_send_cmd(dev, CMD_CONFIG);
}
