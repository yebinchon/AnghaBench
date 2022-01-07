
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int MSR_DIVIL_SOFT_RESET ;
 int udelay (int) ;
 int wrmsrl (int ,unsigned long long) ;

__attribute__((used)) static void cs5536_warm_reset(struct pci_dev *dev)
{

 wrmsrl(MSR_DIVIL_SOFT_RESET, 1ULL);
 udelay(50);
}
