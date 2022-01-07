
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * chpid; } ;
struct TYPE_4__ {TYPE_1__ pmcw; } ;
struct subchannel {int lpm; TYPE_2__ schib; } ;
struct chp_id {int id; } ;


 int chp_id_init (struct chp_id*) ;
 int chp_is_registered (struct chp_id) ;
 int css_schedule_eval_all () ;

__attribute__((used)) static void
__recover_lost_chpids(struct subchannel *sch, int old_lpm)
{
 int mask, i;
 struct chp_id chpid;

 chp_id_init(&chpid);
 for (i = 0; i<8; i++) {
  mask = 0x80 >> i;
  if (!(sch->lpm & mask))
   continue;
  if (old_lpm & mask)
   continue;
  chpid.id = sch->schib.pmcw.chpid[i];
  if (!chp_is_registered(chpid))
   css_schedule_eval_all();
 }
}
