
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rsphdlr; } ;
struct bfa_msgq {TYPE_2__ rspq; } ;
typedef enum bfi_mclass { ____Placeholder_bfi_mclass } bfi_mclass ;
typedef int bfa_msgq_mcfunc_t ;
struct TYPE_3__ {void* cbarg; int cbfn; } ;



void
bfa_msgq_regisr(struct bfa_msgq *msgq, enum bfi_mclass mc,
  bfa_msgq_mcfunc_t cbfn, void *cbarg)
{
 msgq->rspq.rsphdlr[mc].cbfn = cbfn;
 msgq->rspq.rsphdlr[mc].cbarg = cbarg;
}
