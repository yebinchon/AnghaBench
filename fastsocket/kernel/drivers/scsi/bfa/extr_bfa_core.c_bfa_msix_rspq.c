
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rme_vec_q0; } ;
struct TYPE_4__ {TYPE_1__ hwif; } ;
struct bfa_s {TYPE_2__ iocfc; } ;


 int bfa_isr_rspq (struct bfa_s*,scalar_t__) ;

void
bfa_msix_rspq(struct bfa_s *bfa, int vec)
{
 bfa_isr_rspq(bfa, vec - bfa->iocfc.hwif.rme_vec_q0);
}
