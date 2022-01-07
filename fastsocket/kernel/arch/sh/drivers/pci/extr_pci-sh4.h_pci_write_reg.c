
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {scalar_t__ reg_base; } ;


 int ctrl_outl (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void pci_write_reg(struct pci_channel *chan,
     unsigned long val, unsigned long reg)
{
 ctrl_outl(val, chan->reg_base + reg);
}
