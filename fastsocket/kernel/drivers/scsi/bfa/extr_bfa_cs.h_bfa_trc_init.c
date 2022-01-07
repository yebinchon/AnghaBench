
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_trc_mod_s {int ntrc; scalar_t__ stopped; scalar_t__ tail; scalar_t__ head; } ;


 int BFA_TRC_MAX ;

__attribute__((used)) static inline void
bfa_trc_init(struct bfa_trc_mod_s *trcm)
{
 trcm->head = trcm->tail = trcm->stopped = 0;
 trcm->ntrc = BFA_TRC_MAX;
}
