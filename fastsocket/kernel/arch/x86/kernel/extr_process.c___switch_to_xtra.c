
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tss_struct {int io_bitmap; } ;
struct thread_struct {int io_bitmap_max; int io_bitmap_ptr; int debugreg7; int debugreg6; int debugreg3; int debugreg2; int debugreg1; int debugreg0; } ;
struct task_struct {struct thread_struct thread; } ;


 unsigned long DEBUGCTLMSR_BTF ;
 int TIF_BLOCKSTEP ;
 int TIF_DEBUG ;
 int TIF_IO_BITMAP ;
 int TIF_NOTSC ;
 unsigned long get_debugctlmsr () ;
 int hard_disable_TSC () ;
 int hard_enable_TSC () ;
 int max (int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int,int ) ;
 int propagate_user_return_notify (struct task_struct*,struct task_struct*) ;
 int set_debugreg (int ,int) ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;
 int update_debugctlmsr (unsigned long) ;

void __switch_to_xtra(struct task_struct *prev_p, struct task_struct *next_p,
        struct tss_struct *tss)
{
 struct thread_struct *prev, *next;

 prev = &prev_p->thread;
 next = &next_p->thread;

 if (test_tsk_thread_flag(next_p, TIF_DEBUG)) {
  set_debugreg(next->debugreg0, 0);
  set_debugreg(next->debugreg1, 1);
  set_debugreg(next->debugreg2, 2);
  set_debugreg(next->debugreg3, 3);

  set_debugreg(next->debugreg6, 6);
  set_debugreg(next->debugreg7, 7);
 }

 if (test_tsk_thread_flag(prev_p, TIF_BLOCKSTEP) ^
     test_tsk_thread_flag(next_p, TIF_BLOCKSTEP)) {
  unsigned long debugctl = get_debugctlmsr();

  debugctl &= ~DEBUGCTLMSR_BTF;
  if (test_tsk_thread_flag(next_p, TIF_BLOCKSTEP))
   debugctl |= DEBUGCTLMSR_BTF;

  update_debugctlmsr(debugctl);
 }

 if (test_tsk_thread_flag(prev_p, TIF_NOTSC) ^
     test_tsk_thread_flag(next_p, TIF_NOTSC)) {

  if (test_tsk_thread_flag(next_p, TIF_NOTSC))
   hard_disable_TSC();
  else
   hard_enable_TSC();
 }

 if (test_tsk_thread_flag(next_p, TIF_IO_BITMAP)) {




  memcpy(tss->io_bitmap, next->io_bitmap_ptr,
         max(prev->io_bitmap_max, next->io_bitmap_max));
 } else if (test_tsk_thread_flag(prev_p, TIF_IO_BITMAP)) {



  memset(tss->io_bitmap, 0xff, prev->io_bitmap_max);
 }
 propagate_user_return_notify(prev_p, next_p);
}
