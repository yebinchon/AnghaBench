
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gru_thread_state {scalar_t__ ts_tgid_owner; struct gru_state* ts_gru; } ;
struct gru_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ tgid; } ;


 int STAT (int ) ;
 int check_context_retarget_intr ;
 int check_context_unload ;
 TYPE_1__* current ;
 int gru_check_chiplet_assignment (struct gru_state*,struct gru_thread_state*) ;
 scalar_t__ gru_retarget_intr (struct gru_thread_state*) ;
 int gru_unload_context (struct gru_thread_state*,int) ;

void gru_check_context_placement(struct gru_thread_state *gts)
{
 struct gru_state *gru;






 gru = gts->ts_gru;
 if (!gru || gts->ts_tgid_owner != current->tgid)
  return;

 if (!gru_check_chiplet_assignment(gru, gts)) {
  STAT(check_context_unload);
  gru_unload_context(gts, 1);
 } else if (gru_retarget_intr(gts)) {
  STAT(check_context_retarget_intr);
 }
}
