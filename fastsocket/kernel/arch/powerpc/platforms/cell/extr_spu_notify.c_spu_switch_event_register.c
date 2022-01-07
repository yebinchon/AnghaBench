
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int notify_spus_active () ;
 int spu_switch_notifier ;

int spu_switch_event_register(struct notifier_block *n)
{
 int ret;
 ret = blocking_notifier_chain_register(&spu_switch_notifier, n);
 if (!ret)
  notify_spus_active();
 return ret;
}
