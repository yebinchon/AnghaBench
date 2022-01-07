
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int ENODEV ;
 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int dock_notifier_list ;
 int dock_station_count ;

int register_dock_notifier(struct notifier_block *nb)
{
 if (!dock_station_count)
  return -ENODEV;

 return atomic_notifier_chain_register(&dock_notifier_list, nb);
}
