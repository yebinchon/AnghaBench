
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sys_data {int ** resource; } ;


 int ixp23xx_pci_io_space ;
 int ixp23xx_pci_mem_space ;

int ixp23xx_pci_setup(int nr, struct pci_sys_data *sys)
{
 if (nr >= 1)
  return 0;

 sys->resource[0] = &ixp23xx_pci_io_space;
 sys->resource[1] = &ixp23xx_pci_mem_space;
 sys->resource[2] = ((void*)0);

 return 1;
}
