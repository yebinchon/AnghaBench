
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_device_ctl_info {int rcu; int link; } ;


 int call_rcu (int *,int ) ;
 int complete_edac_device_list_del ;
 int list_del_rcu (int *) ;
 int rcu_barrier () ;

__attribute__((used)) static void del_edac_device_from_global_list(struct edac_device_ctl_info
      *edac_device)
{
 list_del_rcu(&edac_device->link);
 call_rcu(&edac_device->rcu, complete_edac_device_list_del);
 rcu_barrier();
}
