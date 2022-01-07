
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int dock_notifier_list ;
 int dock_station_count ;

void unregister_dock_notifier(struct notifier_block *nb)
{
 if (!dock_station_count)
  return;

 atomic_notifier_chain_unregister(&dock_notifier_list, nb);
}
