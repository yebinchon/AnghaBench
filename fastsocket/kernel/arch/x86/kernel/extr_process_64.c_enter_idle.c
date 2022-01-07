
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDLE_START ;
 int atomic_notifier_call_chain (int *,int ,int *) ;
 int idle_notifier ;
 int is_idle ;
 int percpu_write (int ,int) ;

void enter_idle(void)
{
 percpu_write(is_idle, 1);
 atomic_notifier_call_chain(&idle_notifier, IDLE_START, ((void*)0));
}
