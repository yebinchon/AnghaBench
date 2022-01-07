
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_controller {int dummy; } ;


 int scc_pciex_read_port (struct pci_controller*,unsigned long,int) ;

__attribute__((used)) static u8 __scc_pciex_inb(struct pci_controller *phb, unsigned long port)
{
 return (u8)scc_pciex_read_port(phb, port, 1);
}
