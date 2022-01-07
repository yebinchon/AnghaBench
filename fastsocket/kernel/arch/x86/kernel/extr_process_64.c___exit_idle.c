
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDLE_END ;
 int atomic_notifier_call_chain (int *,int ,int *) ;
 int idle_notifier ;
 int is_idle ;
 scalar_t__ x86_test_and_clear_bit_percpu (int ,int ) ;

__attribute__((used)) static void __exit_idle(void)
{
 if (x86_test_and_clear_bit_percpu(0, is_idle) == 0)
  return;
 atomic_notifier_call_chain(&idle_notifier, IDLE_END, ((void*)0));
}
