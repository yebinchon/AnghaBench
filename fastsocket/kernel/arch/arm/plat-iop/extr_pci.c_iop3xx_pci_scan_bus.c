
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sys_data {int busnr; } ;
struct pci_bus {int dummy; } ;


 int iop3xx_ops ;
 struct pci_bus* pci_scan_bus (int ,int *,struct pci_sys_data*) ;

struct pci_bus *iop3xx_pci_scan_bus(int nr, struct pci_sys_data *sys)
{
 return pci_scan_bus(sys->busnr, &iop3xx_ops, sys);
}
