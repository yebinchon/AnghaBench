
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 scalar_t__ check_spu_isolate (struct spu_state*,struct spu*) ;
 int disable_interrupts (struct spu_state*,struct spu*) ;
 int do_mfc_mssync (struct spu_state*,struct spu*) ;
 int halt_mfc_decr (struct spu_state*,struct spu*) ;
 int handle_pending_interrupts (struct spu_state*,struct spu*) ;
 int inhibit_user_access (struct spu_state*,struct spu*) ;
 int issue_mfc_tlbie (struct spu_state*,struct spu*) ;
 int remove_other_spu_access (struct spu_state*,struct spu*) ;
 int save_mfc_cntl (struct spu_state*,struct spu*) ;
 int save_mfc_sr1 (struct spu_state*,struct spu*) ;
 int save_mfc_stopped_status (struct spu_state*,struct spu*) ;
 int save_spu_runcntl (struct spu_state*,struct spu*) ;
 int save_spu_status (struct spu_state*,struct spu*) ;
 int save_timebase (struct spu_state*,struct spu*) ;
 int set_switch_pending (struct spu_state*,struct spu*) ;
 int set_watchdog_timer (struct spu_state*,struct spu*) ;

__attribute__((used)) static int quiece_spu(struct spu_state *prev, struct spu *spu)
{
 if (check_spu_isolate(prev, spu)) {
  return 2;
 }
 disable_interrupts(prev, spu);
 set_watchdog_timer(prev, spu);
 inhibit_user_access(prev, spu);
 if (check_spu_isolate(prev, spu)) {
  return 6;
 }
 set_switch_pending(prev, spu);
 save_mfc_cntl(prev, spu);
 save_spu_runcntl(prev, spu);
 save_mfc_sr1(prev, spu);
 save_spu_status(prev, spu);
 save_mfc_stopped_status(prev, spu);
 halt_mfc_decr(prev, spu);
 save_timebase(prev, spu);
 remove_other_spu_access(prev, spu);
 do_mfc_mssync(prev, spu);
 issue_mfc_tlbie(prev, spu);
 handle_pending_interrupts(prev, spu);

 return 0;
}
