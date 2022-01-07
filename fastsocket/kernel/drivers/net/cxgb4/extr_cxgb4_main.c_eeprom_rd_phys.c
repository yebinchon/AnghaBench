
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pdev; int fn; } ;


 int EEPROMPFSIZE ;
 int eeprom_ptov (unsigned int,int ,int ) ;
 int pci_read_vpd (int ,int,int,int *) ;

__attribute__((used)) static int eeprom_rd_phys(struct adapter *adap, unsigned int phys_addr, u32 *v)
{
 int vaddr = eeprom_ptov(phys_addr, adap->fn, EEPROMPFSIZE);

 if (vaddr >= 0)
  vaddr = pci_read_vpd(adap->pdev, vaddr, sizeof(u32), v);
 return vaddr < 0 ? vaddr : 0;
}
