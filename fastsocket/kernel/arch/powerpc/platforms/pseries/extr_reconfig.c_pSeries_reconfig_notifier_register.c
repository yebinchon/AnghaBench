
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int pSeries_reconfig_chain ;

int pSeries_reconfig_notifier_register(struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&pSeries_reconfig_chain, nb);
}
