
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int xaction_notifier_list ;

__attribute__((used)) static int register_xaction_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&xaction_notifier_list, nb);
}
