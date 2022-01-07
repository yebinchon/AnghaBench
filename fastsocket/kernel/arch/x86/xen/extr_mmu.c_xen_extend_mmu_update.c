
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct multicall_space {struct mmu_update* args; TYPE_1__* mc; } ;
struct mmu_update {int dummy; } ;
struct TYPE_2__ {size_t* args; } ;


 int ADD_STATS (int ,int) ;
 int DOMID_SELF ;
 size_t MMU_UPDATE_HISTO ;
 int MULTI_mmu_update (TYPE_1__*,struct mmu_update*,int,int *,int ) ;
 int __HYPERVISOR_mmu_update ;
 struct multicall_space __xen_mc_entry (int) ;
 int mmu_update ;
 int mmu_update_extended ;
 int * mmu_update_histo ;
 struct multicall_space xen_mc_extend_args (int ,int) ;

__attribute__((used)) static void xen_extend_mmu_update(const struct mmu_update *update)
{
 struct multicall_space mcs;
 struct mmu_update *u;

 mcs = xen_mc_extend_args(__HYPERVISOR_mmu_update, sizeof(*u));

 if (mcs.mc != ((void*)0)) {
  ADD_STATS(mmu_update_extended, 1);
  ADD_STATS(mmu_update_histo[mcs.mc->args[1]], -1);

  mcs.mc->args[1]++;

  if (mcs.mc->args[1] < MMU_UPDATE_HISTO)
   ADD_STATS(mmu_update_histo[mcs.mc->args[1]], 1);
  else
   ADD_STATS(mmu_update_histo[0], 1);
 } else {
  ADD_STATS(mmu_update, 1);
  mcs = __xen_mc_entry(sizeof(*u));
  MULTI_mmu_update(mcs.mc, mcs.args, 1, ((void*)0), DOMID_SELF);
  ADD_STATS(mmu_update_histo[1], 1);
 }

 u = mcs.args;
 *u = *update;
}
