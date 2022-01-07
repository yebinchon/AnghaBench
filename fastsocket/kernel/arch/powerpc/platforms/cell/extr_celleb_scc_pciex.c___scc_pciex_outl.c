
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_controller {int dummy; } ;


 int scc_pciex_write_port (struct pci_controller*,unsigned long,unsigned int,int) ;

__attribute__((used)) static void __scc_pciex_outl(struct pci_controller *phb,
        u32 val, unsigned long port)
{
 unsigned int mod = port & 0x3ul;
 if (mod == 0)
  scc_pciex_write_port(phb, port, 4, val);
 else {
  u32 d1 = val & (0xFFFFFFFFul >> (mod * 8));
  u32 d2 = val >> ((4 - mod) * 8);
  scc_pciex_write_port(phb, port, 4 - mod, d1);
  scc_pciex_write_port(phb, port + 1, mod, d2);
 }
}
