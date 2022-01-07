
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void* u16 ;
struct TYPE_2__ {int u64; } ;
struct bfa_trc_s {int timestamp; TYPE_1__ data; void* line; void* fileno; } ;
struct bfa_trc_mod_s {int tail; int head; scalar_t__ stopped; struct bfa_trc_s* trc; } ;


 int BFA_TRC_MAX ;
 int BFA_TRC_TS (struct bfa_trc_mod_s*) ;

__attribute__((used)) static inline void
__bfa_trc(struct bfa_trc_mod_s *trcm, int fileno, int line, u64 data)
{
 int tail = trcm->tail;
 struct bfa_trc_s *trc = &trcm->trc[tail];

 if (trcm->stopped)
  return;

 trc->fileno = (u16) fileno;
 trc->line = (u16) line;
 trc->data.u64 = data;
 trc->timestamp = BFA_TRC_TS(trcm);

 trcm->tail = (trcm->tail + 1) & (BFA_TRC_MAX - 1);
 if (trcm->tail == trcm->head)
  trcm->head = (trcm->head + 1) & (BFA_TRC_MAX - 1);
}
