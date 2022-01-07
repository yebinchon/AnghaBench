
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {scalar_t__ io_base_virt; } ;


 unsigned long _IO_BASE ;

__attribute__((used)) static inline unsigned long get_bus_address(struct pci_controller *phb,
         unsigned long port)
{
 return port - ((unsigned long)(phb->io_base_virt) - _IO_BASE);
}
