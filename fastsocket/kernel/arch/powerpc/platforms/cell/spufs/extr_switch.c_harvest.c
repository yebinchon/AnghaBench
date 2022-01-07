
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int clear_spu_status (struct spu_state*,struct spu*) ;
 int disable_interrupts (struct spu_state*,struct spu*) ;
 int do_mfc_mssync (struct spu_state*,struct spu*) ;
 int enable_interrupts (struct spu_state*,struct spu*) ;
 int handle_pending_interrupts (struct spu_state*,struct spu*) ;
 int inhibit_user_access (struct spu_state*,struct spu*) ;
 int issue_mfc_tlbie (struct spu_state*,struct spu*) ;
 int purge_mfc_queue (struct spu_state*,struct spu*) ;
 int remove_other_spu_access (struct spu_state*,struct spu*) ;
 int reset_ch_part1 (struct spu_state*,struct spu*) ;
 int reset_ch_part2 (struct spu_state*,struct spu*) ;
 int reset_spu_lslr (struct spu_state*,struct spu*) ;
 int reset_spu_privcntl (struct spu_state*,struct spu*) ;
 int resume_mfc_queue (struct spu_state*,struct spu*) ;
 int set_mfc_tclass_id (struct spu_state*,struct spu*) ;
 int set_switch_active (struct spu_state*,struct spu*) ;
 int set_switch_pending (struct spu_state*,struct spu*) ;
 int setup_mfc_sr1 (struct spu_state*,struct spu*) ;
 int spu_invalidate_slbs (struct spu*) ;
 int stop_spu_isolate (struct spu*) ;
 int suspend_mfc_and_halt_decr (struct spu_state*,struct spu*) ;
 int suspend_spe (struct spu_state*,struct spu*) ;
 int terminate_spu_app (struct spu_state*,struct spu*) ;
 int wait_purge_complete (struct spu_state*,struct spu*) ;
 int wait_suspend_mfc_complete (struct spu_state*,struct spu*) ;

__attribute__((used)) static void harvest(struct spu_state *prev, struct spu *spu)
{






 disable_interrupts(prev, spu);
 inhibit_user_access(prev, spu);
 terminate_spu_app(prev, spu);
 set_switch_pending(prev, spu);
 stop_spu_isolate(spu);
 remove_other_spu_access(prev, spu);
 suspend_mfc_and_halt_decr(prev, spu);
 wait_suspend_mfc_complete(prev, spu);
 if (!suspend_spe(prev, spu))
  clear_spu_status(prev, spu);
 do_mfc_mssync(prev, spu);
 issue_mfc_tlbie(prev, spu);
 handle_pending_interrupts(prev, spu);
 purge_mfc_queue(prev, spu);
 wait_purge_complete(prev, spu);
 reset_spu_privcntl(prev, spu);
 reset_spu_lslr(prev, spu);
 setup_mfc_sr1(prev, spu);
 spu_invalidate_slbs(spu);
 reset_ch_part1(prev, spu);
 reset_ch_part2(prev, spu);
 enable_interrupts(prev, spu);
 set_switch_active(prev, spu);
 set_mfc_tclass_id(prev, spu);
 resume_mfc_queue(prev, spu);
}
