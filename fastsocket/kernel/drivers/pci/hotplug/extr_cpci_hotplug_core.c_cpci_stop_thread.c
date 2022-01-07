
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpci_thread ;
 int kthread_stop (int ) ;
 int thread_finished ;

__attribute__((used)) static void
cpci_stop_thread(void)
{
 kthread_stop(cpci_thread);
 thread_finished = 1;
}
