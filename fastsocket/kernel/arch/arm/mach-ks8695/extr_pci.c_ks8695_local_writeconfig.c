
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ KS8695_PBCD ;
 scalar_t__ KS8695_PCI_VA ;
 int __raw_writel (int ,scalar_t__) ;
 int ks8695_pci_setupconfig (int ,int ,int) ;

__attribute__((used)) static void ks8695_local_writeconfig(int where, u32 value)
{
 ks8695_pci_setupconfig(0, 0, where);
 __raw_writel(value, KS8695_PCI_VA + KS8695_PBCD);
}
