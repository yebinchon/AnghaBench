
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_iotag_s {int qe; } ;
struct bfa_ioim_s {scalar_t__ nsgpgs; int qe; int iotag; int itnim; int sgpg_q; int bfa; struct bfa_fcpim_s* fcpim; } ;
struct bfa_fcpim_s {TYPE_1__* fcp; int ios_active; } ;
struct TYPE_2__ {int num_fwtio_reqs; int iotag_tio_free_q; int iotag_ioim_free_q; int num_ioim_reqs; } ;


 int BFA_IOIM_IOTAG_MASK ;
 struct bfa_iotag_s* BFA_IOTAG_FROM_TAG (TYPE_1__*,int ) ;
 int WARN_ON (int) ;
 int bfa_sgpg_mfree (int ,int *,scalar_t__) ;
 int bfa_stats (int ,int ) ;
 int io_comps ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;

void
bfa_ioim_free(struct bfa_ioim_s *ioim)
{
 struct bfa_fcpim_s *fcpim = ioim->fcpim;
 struct bfa_iotag_s *iotag;

 if (ioim->nsgpgs > 0)
  bfa_sgpg_mfree(ioim->bfa, &ioim->sgpg_q, ioim->nsgpgs);

 bfa_stats(ioim->itnim, io_comps);
 fcpim->ios_active--;

 ioim->iotag &= BFA_IOIM_IOTAG_MASK;

 WARN_ON(!(ioim->iotag <
  (fcpim->fcp->num_ioim_reqs + fcpim->fcp->num_fwtio_reqs)));
 iotag = BFA_IOTAG_FROM_TAG(fcpim->fcp, ioim->iotag);

 if (ioim->iotag < fcpim->fcp->num_ioim_reqs)
  list_add_tail(&iotag->qe, &fcpim->fcp->iotag_ioim_free_q);
 else
  list_add_tail(&iotag->qe, &fcpim->fcp->iotag_tio_free_q);

 list_del(&ioim->qe);
}
