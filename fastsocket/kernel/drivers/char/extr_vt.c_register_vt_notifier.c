
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int vt_notifier_list ;

int register_vt_notifier(struct notifier_block *nb)
{
 return atomic_notifier_chain_register(&vt_notifier_list, nb);
}
