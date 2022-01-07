
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int regs; } ;
struct TYPE_7__ {int (* proc ) (void*) ;void* arg; } ;
struct TYPE_8__ {TYPE_1__ thread; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_11__ {TYPE_4__ regs; int exec_buf; TYPE_3__ request; int * prev_sched; } ;
struct TYPE_12__ {TYPE_5__ thread; } ;


 TYPE_6__* current ;
 int do_exit (int ) ;
 int interrupt_end () ;
 int run_kernel_thread (int (*) (void*),void*,int *) ;
 int schedule_tail (int *) ;
 int userspace (int *) ;

void new_thread_handler(void)
{
 int (*fn)(void *), n;
 void *arg;

 if (current->thread.prev_sched != ((void*)0))
  schedule_tail(current->thread.prev_sched);
 current->thread.prev_sched = ((void*)0);

 fn = current->thread.request.u.thread.proc;
 arg = current->thread.request.u.thread.arg;





 n = run_kernel_thread(fn, arg, &current->thread.exec_buf);
 if (n == 1) {

  interrupt_end();
  userspace(&current->thread.regs.regs);
 }
 else do_exit(0);
}
