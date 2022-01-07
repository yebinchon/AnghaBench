
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int * msi_bitmap; } ;


 int kfree (int *) ;

__attribute__((used)) static void msi_bitmap_free(struct pci_pbm_info *pbm)
{
 kfree(pbm->msi_bitmap);
 pbm->msi_bitmap = ((void*)0);
}
