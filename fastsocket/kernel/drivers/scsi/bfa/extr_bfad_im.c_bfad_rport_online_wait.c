
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_flags; } ;


 int BFAD_PORT_ONLINE ;
 int BFAD_RPORT_ONLINE ;
 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int bfa_linkup_delay ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;

void
bfad_rport_online_wait(struct bfad_s *bfad)
{
 int i;
 int rport_delay = 10;

 for (i = 0; !(bfad->bfad_flags & BFAD_PORT_ONLINE)
  && i < bfa_linkup_delay; i++) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(HZ);
 }

 if (bfad->bfad_flags & BFAD_PORT_ONLINE) {
  rport_delay = rport_delay < bfa_linkup_delay ?
   rport_delay : bfa_linkup_delay;
  for (i = 0; !(bfad->bfad_flags & BFAD_RPORT_ONLINE)
   && i < rport_delay; i++) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   schedule_timeout(HZ);
  }

  if (rport_delay > 0 && (bfad->bfad_flags & BFAD_RPORT_ONLINE)) {
   set_current_state(TASK_UNINTERRUPTIBLE);
   schedule_timeout(rport_delay * HZ);
  }
 }
}
