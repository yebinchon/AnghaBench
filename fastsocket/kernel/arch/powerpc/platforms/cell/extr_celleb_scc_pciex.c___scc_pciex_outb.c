
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_controller {int dummy; } ;


 int scc_pciex_write_port (struct pci_controller*,unsigned long,int,int ) ;

__attribute__((used)) static void __scc_pciex_outb(struct pci_controller *phb,
        u8 val, unsigned long port)
{
 scc_pciex_write_port(phb, port, 1, (u32)val);
}
