
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sym_tcb {int usrtags; int usr_width; int usr_period; int usrflags; } ;
struct Tekram_target {int flags; int sync_index; } ;
struct TYPE_3__ {int max_tags_index; struct Tekram_target* target; } ;
typedef TYPE_1__ Tekram_nvram ;


 int SYM_DISC_ENABLED ;
 int TEKRAM_DISCONNECT_ENABLE ;
 int TEKRAM_SYNC_NEGO ;
 int TEKRAM_TAGGED_COMMANDS ;
 int TEKRAM_WIDE_NEGO ;
 int * Tekram_sync ;

__attribute__((used)) static void
sym_Tekram_setup_target(struct sym_tcb *tp, int target, Tekram_nvram *nvram)
{
 struct Tekram_target *tn = &nvram->target[target];

 if (tn->flags & TEKRAM_TAGGED_COMMANDS) {
  tp->usrtags = 2 << nvram->max_tags_index;
 }

 if (tn->flags & TEKRAM_DISCONNECT_ENABLE)
  tp->usrflags |= SYM_DISC_ENABLED;

 if (tn->flags & TEKRAM_SYNC_NEGO)
  tp->usr_period = Tekram_sync[tn->sync_index & 0xf];
 tp->usr_width = (tn->flags & TEKRAM_WIDE_NEGO) ? 1 : 0;
}
