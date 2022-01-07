
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int * msi_irq_table; int * msiq_irq_cookies; } ;


 int kfree (int *) ;

__attribute__((used)) static void msi_table_free(struct pci_pbm_info *pbm)
{
 kfree(pbm->msiq_irq_cookies);
 pbm->msiq_irq_cookies = ((void*)0);

 kfree(pbm->msi_irq_table);
 pbm->msi_irq_table = ((void*)0);
}
