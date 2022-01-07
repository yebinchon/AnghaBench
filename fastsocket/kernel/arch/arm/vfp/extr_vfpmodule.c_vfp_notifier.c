
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t cpu; int fpexc; int fpscr; } ;
union vfp_state {TYPE_1__ hard; } ;
typedef int u32 ;
struct thread_info {size_t cpu; union vfp_state vfpstate; } ;
struct notifier_block {int dummy; } ;
typedef size_t __u32 ;


 int FPEXC ;
 int FPEXC_EN ;
 int FPSCR_ROUND_NEAREST ;
 int NOTIFY_DONE ;
 unsigned long THREAD_NOTIFY_FLUSH ;
 unsigned long THREAD_NOTIFY_SWITCH ;
 int fmrx (int ) ;
 int fmxr (int ,int) ;
 union vfp_state** last_VFP_context ;
 scalar_t__ likely (int) ;
 int memset (union vfp_state*,int ,int) ;
 int vfp_save_state (union vfp_state*,int) ;

__attribute__((used)) static int vfp_notifier(struct notifier_block *self, unsigned long cmd, void *v)
{
 struct thread_info *thread = v;
 union vfp_state *vfp;
 __u32 cpu = thread->cpu;

 if (likely(cmd == THREAD_NOTIFY_SWITCH)) {
  u32 fpexc = fmrx(FPEXC);
  fmxr(FPEXC, fpexc & ~FPEXC_EN);
  return NOTIFY_DONE;
 }

 vfp = &thread->vfpstate;
 if (cmd == THREAD_NOTIFY_FLUSH) {



  memset(vfp, 0, sizeof(union vfp_state));

  vfp->hard.fpexc = FPEXC_EN;
  vfp->hard.fpscr = FPSCR_ROUND_NEAREST;




  fmxr(FPEXC, fmrx(FPEXC) & ~FPEXC_EN);
 }


 if (last_VFP_context[cpu] == vfp)
  last_VFP_context[cpu] = ((void*)0);

 return NOTIFY_DONE;
}
