
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct bfa_ioim_s {scalar_t__ nsges; int sgpg_q; int sgpg; scalar_t__ nsgpgs; TYPE_1__* iosp; int bfa; } ;
typedef int bfa_boolean_t ;
struct TYPE_2__ {int sgpg_wqe; } ;


 int BFA_FALSE ;
 scalar_t__ BFA_SGPG_NPAGE (scalar_t__) ;
 scalar_t__ BFA_STATUS_OK ;
 int BFA_TRUE ;
 scalar_t__ BFI_SGE_INLINE ;
 int WARN_ON (int) ;
 int bfa_q_first (int *) ;
 scalar_t__ bfa_sgpg_malloc (int ,int *,scalar_t__) ;
 int bfa_sgpg_wait (int ,int *,scalar_t__) ;

__attribute__((used)) static bfa_boolean_t
bfa_ioim_sgpg_alloc(struct bfa_ioim_s *ioim)
{
 u16 nsgpgs;

 WARN_ON(ioim->nsges <= BFI_SGE_INLINE);




 nsgpgs = BFA_SGPG_NPAGE(ioim->nsges);
 if (!nsgpgs)
  return BFA_TRUE;

 if (bfa_sgpg_malloc(ioim->bfa, &ioim->sgpg_q, nsgpgs)
     != BFA_STATUS_OK) {
  bfa_sgpg_wait(ioim->bfa, &ioim->iosp->sgpg_wqe, nsgpgs);
  return BFA_FALSE;
 }

 ioim->nsgpgs = nsgpgs;
 ioim->sgpg = bfa_q_first(&ioim->sgpg_q);

 return BFA_TRUE;
}
