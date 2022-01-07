
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nvecs; } ;
struct TYPE_3__ {int (* hw_reginit ) (struct bfa_s*) ;int hw_rspq_ack; int * hw_isr_mode_set; scalar_t__ cpe_vec_q0; scalar_t__ rme_vec_q0; int hw_msix_get_rme_range; int hw_msix_getvecs; int hw_msix_uninstall; int hw_msix_queue_install; int hw_msix_ctrl_install; int hw_msix_init; int * hw_reqq_ack; } ;
struct bfa_iocfc_cfg_s {int dummy; } ;
struct bfa_iocfc_s {TYPE_1__ hwif; struct bfa_iocfc_cfg_s cfg; struct bfa_s* bfa; } ;
struct bfa_s {TYPE_2__ msix; int ioc; void* bfad; struct bfa_iocfc_s iocfc; } ;
struct bfa_pcidev_s {int dummy; } ;


 int BFI_IOC_MAX_CQS ;
 scalar_t__ BFI_MSIX_CPE_QMIN_CB ;
 scalar_t__ BFI_MSIX_CPE_QMIN_CT ;
 scalar_t__ BFI_MSIX_RME_QMIN_CB ;
 scalar_t__ BFI_MSIX_RME_QMIN_CT ;
 scalar_t__ bfa_asic_id_ct2 (int ) ;
 scalar_t__ bfa_asic_id_ctc (int ) ;
 int * bfa_hwcb_isr_mode_set ;
 int bfa_hwcb_msix_ctrl_install ;
 int bfa_hwcb_msix_get_rme_range ;
 int bfa_hwcb_msix_getvecs ;
 int bfa_hwcb_msix_init ;
 int bfa_hwcb_msix_queue_install ;
 int bfa_hwcb_msix_uninstall ;
 int bfa_hwcb_reginit (struct bfa_s*) ;
 int bfa_hwcb_rspq_ack ;
 int bfa_hwct2_reginit (struct bfa_s*) ;
 int bfa_hwct2_rspq_ack ;
 int * bfa_hwct_isr_mode_set ;
 int bfa_hwct_msix_ctrl_install ;
 int bfa_hwct_msix_get_rme_range ;
 int bfa_hwct_msix_getvecs ;
 int bfa_hwct_msix_init ;
 int bfa_hwct_msix_queue_install ;
 int bfa_hwct_msix_uninstall ;
 int bfa_hwct_reginit (struct bfa_s*) ;
 int * bfa_hwct_reqq_ack ;
 int bfa_hwct_rspq_ack ;
 int bfa_ioc_devid (int *) ;
 int bfa_ioc_pcifn (int *) ;
 int stub1 (struct bfa_s*) ;

__attribute__((used)) static void
bfa_iocfc_init_mem(struct bfa_s *bfa, void *bfad, struct bfa_iocfc_cfg_s *cfg,
     struct bfa_pcidev_s *pcidev)
{
 struct bfa_iocfc_s *iocfc = &bfa->iocfc;

 bfa->bfad = bfad;
 iocfc->bfa = bfa;
 iocfc->cfg = *cfg;




 if (bfa_asic_id_ctc(bfa_ioc_devid(&bfa->ioc))) {
  iocfc->hwif.hw_reginit = bfa_hwct_reginit;
  iocfc->hwif.hw_reqq_ack = bfa_hwct_reqq_ack;
  iocfc->hwif.hw_rspq_ack = bfa_hwct_rspq_ack;
  iocfc->hwif.hw_msix_init = bfa_hwct_msix_init;
  iocfc->hwif.hw_msix_ctrl_install = bfa_hwct_msix_ctrl_install;
  iocfc->hwif.hw_msix_queue_install = bfa_hwct_msix_queue_install;
  iocfc->hwif.hw_msix_uninstall = bfa_hwct_msix_uninstall;
  iocfc->hwif.hw_isr_mode_set = bfa_hwct_isr_mode_set;
  iocfc->hwif.hw_msix_getvecs = bfa_hwct_msix_getvecs;
  iocfc->hwif.hw_msix_get_rme_range = bfa_hwct_msix_get_rme_range;
  iocfc->hwif.rme_vec_q0 = BFI_MSIX_RME_QMIN_CT;
  iocfc->hwif.cpe_vec_q0 = BFI_MSIX_CPE_QMIN_CT;
 } else {
  iocfc->hwif.hw_reginit = bfa_hwcb_reginit;
  iocfc->hwif.hw_reqq_ack = ((void*)0);
  iocfc->hwif.hw_rspq_ack = bfa_hwcb_rspq_ack;
  iocfc->hwif.hw_msix_init = bfa_hwcb_msix_init;
  iocfc->hwif.hw_msix_ctrl_install = bfa_hwcb_msix_ctrl_install;
  iocfc->hwif.hw_msix_queue_install = bfa_hwcb_msix_queue_install;
  iocfc->hwif.hw_msix_uninstall = bfa_hwcb_msix_uninstall;
  iocfc->hwif.hw_isr_mode_set = bfa_hwcb_isr_mode_set;
  iocfc->hwif.hw_msix_getvecs = bfa_hwcb_msix_getvecs;
  iocfc->hwif.hw_msix_get_rme_range = bfa_hwcb_msix_get_rme_range;
  iocfc->hwif.rme_vec_q0 = BFI_MSIX_RME_QMIN_CB +
   bfa_ioc_pcifn(&bfa->ioc) * BFI_IOC_MAX_CQS;
  iocfc->hwif.cpe_vec_q0 = BFI_MSIX_CPE_QMIN_CB +
   bfa_ioc_pcifn(&bfa->ioc) * BFI_IOC_MAX_CQS;
 }

 if (bfa_asic_id_ct2(bfa_ioc_devid(&bfa->ioc))) {
  iocfc->hwif.hw_reginit = bfa_hwct2_reginit;
  iocfc->hwif.hw_isr_mode_set = ((void*)0);
  iocfc->hwif.hw_rspq_ack = bfa_hwct2_rspq_ack;
 }

 iocfc->hwif.hw_reginit(bfa);
 bfa->msix.nvecs = 0;
}
