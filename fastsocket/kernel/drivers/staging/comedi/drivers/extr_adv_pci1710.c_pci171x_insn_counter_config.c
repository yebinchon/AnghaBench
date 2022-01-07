
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {unsigned int cnt0_write_wait; int CntrlReg; } ;


 int Control_CNT0 ;
 int Counter_BCD ;
 int Counter_M0 ;
 int Counter_M1 ;
 int Counter_M2 ;
 int Counter_RW0 ;
 int Counter_RW1 ;
 scalar_t__ PCI171x_CNTCTRL ;
 scalar_t__ PCI171x_CONTROL ;
 TYPE_1__* devpriv ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static int pci171x_insn_counter_config(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 return 1;
}
