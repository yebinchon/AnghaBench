
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hw_rspq_ack; int * hw_reqq_ack; } ;
struct TYPE_4__ {TYPE_1__ hwif; } ;
struct bfa_s {TYPE_2__ iocfc; } ;
typedef scalar_t__ bfa_boolean_t ;


 int * bfa_hwcb_reqq_ack_msix ;
 int bfa_hwcb_rspq_ack ;
 int bfa_hwcb_rspq_ack_msix ;

void
bfa_hwcb_isr_mode_set(struct bfa_s *bfa, bfa_boolean_t msix)
{
 if (msix) {
  bfa->iocfc.hwif.hw_reqq_ack = bfa_hwcb_reqq_ack_msix;
  bfa->iocfc.hwif.hw_rspq_ack = bfa_hwcb_rspq_ack_msix;
 } else {
  bfa->iocfc.hwif.hw_reqq_ack = ((void*)0);
  bfa->iocfc.hwif.hw_rspq_ack = bfa_hwcb_rspq_ack;
 }
}
