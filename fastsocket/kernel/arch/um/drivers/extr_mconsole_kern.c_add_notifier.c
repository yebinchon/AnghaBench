
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_chain_register (int *,int *) ;
 int panic_exit_notifier ;
 int panic_notifier_list ;

__attribute__((used)) static int add_notifier(void)
{
 atomic_notifier_chain_register(&panic_notifier_list,
   &panic_exit_notifier);
 return 0;
}
