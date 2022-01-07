
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ nvecs; } ;
struct TYPE_8__ {int intr_mask; int intr_status; } ;
struct TYPE_9__ {int intr_mask; TYPE_2__ bfa_regs; } ;
struct TYPE_7__ {int device_id; } ;
struct TYPE_11__ {TYPE_1__ pcidev; } ;
struct bfa_s {int intr_enabled; TYPE_4__ msix; TYPE_3__ iocfc; TYPE_5__ ioc; } ;


 int BFA_TRUE ;
 int __HFN_INT_ERR_MASK ;
 int __HFN_INT_ERR_MASK_CT2 ;
 int __HFN_INT_FN0_MASK ;
 int __HFN_INT_FN0_MASK_CT2 ;
 int __HFN_INT_FN1_MASK ;
 int __HFN_INT_FN1_MASK_CT2 ;
 scalar_t__ bfa_asic_id_ct2 (int ) ;
 int bfa_ioc_pcifn (TYPE_5__*) ;
 int bfa_ioc_portid (TYPE_5__*) ;
 int bfa_isr_mode_set (struct bfa_s*,int) ;
 int bfa_msix_ctrl_install (struct bfa_s*) ;
 int bfa_trc (struct bfa_s*,int) ;
 int writel (int ,int ) ;

void
bfa_isr_enable(struct bfa_s *bfa)
{
 u32 umsk;
 int port_id = bfa_ioc_portid(&bfa->ioc);

 bfa_trc(bfa, bfa_ioc_pcifn(&bfa->ioc));
 bfa_trc(bfa, port_id);

 bfa_msix_ctrl_install(bfa);

 if (bfa_asic_id_ct2(bfa->ioc.pcidev.device_id)) {
  umsk = __HFN_INT_ERR_MASK_CT2;
  umsk |= port_id == 0 ?
   __HFN_INT_FN0_MASK_CT2 : __HFN_INT_FN1_MASK_CT2;
 } else {
  umsk = __HFN_INT_ERR_MASK;
  umsk |= port_id == 0 ? __HFN_INT_FN0_MASK : __HFN_INT_FN1_MASK;
 }

 writel(umsk, bfa->iocfc.bfa_regs.intr_status);
 writel(~umsk, bfa->iocfc.bfa_regs.intr_mask);
 bfa->iocfc.intr_mask = ~umsk;
 bfa_isr_mode_set(bfa, bfa->msix.nvecs != 0);




 bfa->intr_enabled = BFA_TRUE;
}
