
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int pci_6534_load_fpga (struct comedi_device*,int,int *,int ) ;

__attribute__((used)) static int pci_6534_reset_fpga(struct comedi_device *dev, int fpga_index)
{
 return pci_6534_load_fpga(dev, fpga_index, ((void*)0), 0);
}
