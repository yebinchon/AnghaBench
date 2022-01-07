
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int rcu; int link; } ;


 int call_rcu (int *,int ) ;
 int complete_edac_pci_list_del ;
 int list_del_rcu (int *) ;
 int rcu_barrier () ;

__attribute__((used)) static void del_edac_pci_from_global_list(struct edac_pci_ctl_info *pci)
{
 list_del_rcu(&pci->link);
 call_rcu(&pci->rcu, complete_edac_pci_list_del);
 rcu_barrier();
}
