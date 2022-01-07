
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ io_addr; } ;


 scalar_t__ ICP_MULTI_DI ;
 TYPE_1__* devpriv ;
 unsigned int readw (scalar_t__) ;

__attribute__((used)) static int icp_multi_insn_bits_di(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 data[1] = readw(devpriv->io_addr + ICP_MULTI_DI);

 return 2;
}
