
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_tskim_s {TYPE_2__* fcpim; int qe; TYPE_1__* itnim; } ;
struct TYPE_4__ {int tskim_free_q; } ;
struct TYPE_3__ {int tsk_q; } ;


 int WARN_ON (int) ;
 int bfa_q_is_on_q_func (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

void
bfa_tskim_free(struct bfa_tskim_s *tskim)
{
 WARN_ON(!bfa_q_is_on_q_func(&tskim->itnim->tsk_q, &tskim->qe));
 list_del(&tskim->qe);
 list_add_tail(&tskim->qe, &tskim->fcpim->tskim_free_q);
}
