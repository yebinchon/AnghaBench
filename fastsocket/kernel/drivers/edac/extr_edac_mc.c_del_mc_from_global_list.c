
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int rcu; int link; } ;


 int atomic_dec (int *) ;
 int call_rcu (int *,int ) ;
 int complete_mc_list_del ;
 int edac_handlers ;
 int list_del_rcu (int *) ;
 int rcu_barrier () ;

__attribute__((used)) static void del_mc_from_global_list(struct mem_ctl_info *mci)
{
 atomic_dec(&edac_handlers);
 list_del_rcu(&mci->link);
 call_rcu(&mci->rcu, complete_mc_list_del);
 rcu_barrier();
}
