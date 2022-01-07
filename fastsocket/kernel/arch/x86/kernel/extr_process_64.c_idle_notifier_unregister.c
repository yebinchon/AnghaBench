
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int idle_notifier ;

void idle_notifier_unregister(struct notifier_block *n)
{
 atomic_notifier_chain_unregister(&idle_notifier, n);
}
