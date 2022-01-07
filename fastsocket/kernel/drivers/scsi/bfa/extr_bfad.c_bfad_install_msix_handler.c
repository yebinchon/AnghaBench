
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device_id; } ;
struct bfad_s {int nvec; char* pci_name; int pcidev; int bfad_flags; TYPE_3__* msix_tab; TYPE_1__ hal_pcidev; } ;
typedef int irq_handler_t ;
struct TYPE_6__ {int vector; } ;
struct TYPE_7__ {TYPE_2__ msix; int name; } ;


 int BFAD_MSIX_ON ;
 scalar_t__ bfa_asic_id_cb (int ) ;
 int bfa_trc (struct bfad_s*,int) ;
 scalar_t__ bfad_msix ;
 int free_irq (int,TYPE_3__*) ;
 char** msix_name_cb ;
 char** msix_name_ct ;
 int pci_disable_msix (int ) ;
 int request_irq (int,int ,int ,int ,TYPE_3__*) ;
 int sprintf (int ,char*,char*,char*) ;

int
bfad_install_msix_handler(struct bfad_s *bfad)
{
 int i, error = 0;

 for (i = 0; i < bfad->nvec; i++) {
  sprintf(bfad->msix_tab[i].name, "bfa-%s-%s",
    bfad->pci_name,
    ((bfa_asic_id_cb(bfad->hal_pcidev.device_id)) ?
    msix_name_cb[i] : msix_name_ct[i]));

  error = request_irq(bfad->msix_tab[i].msix.vector,
        (irq_handler_t) bfad_msix, 0,
        bfad->msix_tab[i].name, &bfad->msix_tab[i]);
  bfa_trc(bfad, i);
  bfa_trc(bfad, bfad->msix_tab[i].msix.vector);
  if (error) {
   int j;

   for (j = 0; j < i; j++)
    free_irq(bfad->msix_tab[j].msix.vector,
      &bfad->msix_tab[j]);

   bfad->bfad_flags &= ~BFAD_MSIX_ON;
   pci_disable_msix(bfad->pcidev);

   return 1;
  }
 }

 return 0;
}
