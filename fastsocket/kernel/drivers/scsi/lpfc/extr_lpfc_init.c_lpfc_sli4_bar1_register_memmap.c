
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ctrl_regs_memmap_p; scalar_t__ ISCRregaddr; scalar_t__ IMRregaddr; scalar_t__ ISRregaddr; scalar_t__ PSMPHRregaddr; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;


 scalar_t__ LPFC_HST_IMR0 ;
 scalar_t__ LPFC_HST_ISCR0 ;
 scalar_t__ LPFC_HST_ISR0 ;
 scalar_t__ LPFC_SLIPORT_IF0_SMPHR ;

__attribute__((used)) static void
lpfc_sli4_bar1_register_memmap(struct lpfc_hba *phba)
{
 phba->sli4_hba.PSMPHRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
  LPFC_SLIPORT_IF0_SMPHR;
 phba->sli4_hba.ISRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
  LPFC_HST_ISR0;
 phba->sli4_hba.IMRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
  LPFC_HST_IMR0;
 phba->sli4_hba.ISCRregaddr = phba->sli4_hba.ctrl_regs_memmap_p +
  LPFC_HST_ISCR0;
}
