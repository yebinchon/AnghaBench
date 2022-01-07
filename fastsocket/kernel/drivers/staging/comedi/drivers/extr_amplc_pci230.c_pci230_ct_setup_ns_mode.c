
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase1; } ;


 int CLK_CONFIG (unsigned int,unsigned int) ;
 scalar_t__ PCI230_Z2_CT_BASE ;
 scalar_t__ PCI230_ZCLK_SCE ;
 TYPE_1__* devpriv ;
 int i8254_set_mode (scalar_t__,int ,unsigned int,unsigned int) ;
 int i8254_write (scalar_t__,int ,unsigned int,unsigned int) ;
 int outb (int ,scalar_t__) ;
 unsigned int pci230_choose_clk_count (int ,unsigned int*,unsigned int) ;

__attribute__((used)) static void pci230_ct_setup_ns_mode(struct comedi_device *dev, unsigned int ct,
        unsigned int mode, uint64_t ns,
        unsigned int round)
{
 unsigned int clk_src;
 unsigned int count;


 i8254_set_mode(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, ct, mode);

 clk_src = pci230_choose_clk_count(ns, &count, round);

 outb(CLK_CONFIG(ct, clk_src), devpriv->iobase1 + PCI230_ZCLK_SCE);

 if (count >= 65536) {
  count = 0;
 }
 i8254_write(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, ct, count);
}
