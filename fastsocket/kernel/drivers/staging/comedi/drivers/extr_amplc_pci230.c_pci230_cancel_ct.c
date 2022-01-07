
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase1; } ;


 int I8254_MODE1 ;
 scalar_t__ PCI230_Z2_CT_BASE ;
 TYPE_1__* devpriv ;
 int i8254_set_mode (scalar_t__,int ,unsigned int,int ) ;

__attribute__((used)) static void pci230_cancel_ct(struct comedi_device *dev, unsigned int ct)
{
 i8254_set_mode(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, ct,
         I8254_MODE1);

}
