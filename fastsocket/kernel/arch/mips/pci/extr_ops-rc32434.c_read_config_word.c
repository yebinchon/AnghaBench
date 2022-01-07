
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;


 int PCI_ACCESS_READ ;
 int config_access (int ,struct pci_bus*,unsigned int,int,int*) ;

__attribute__((used)) static int read_config_word(struct pci_bus *bus, unsigned int devfn,
       int where, u16 *val)
{
 u32 data;
 int ret;

 ret = config_access(PCI_ACCESS_READ, bus, devfn, where, &data);
 *val = (data >> ((where & 3) << 3)) & 0xffff;
 return ret;
}
