
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int uc_macs; int * pmac_id; int if_handle; } ;


 int be_cancel_worker (struct be_adapter*) ;
 int be_clear_queues (struct be_adapter*) ;
 int be_cmd_if_destroy (struct be_adapter*,int ,int ) ;
 int be_cmd_pmac_del (struct be_adapter*,int ,int ,int ) ;
 int be_msix_disable (struct be_adapter*) ;
 int be_vf_clear (struct be_adapter*) ;
 int kfree (int *) ;
 scalar_t__ sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_clear(struct be_adapter *adapter)
{
 int i;

 be_cancel_worker(adapter);

 if (sriov_enabled(adapter))
  be_vf_clear(adapter);


 for (i = 0; i < (adapter->uc_macs + 1); i++)
  be_cmd_pmac_del(adapter, adapter->if_handle,
    adapter->pmac_id[i], 0);
 adapter->uc_macs = 0;

 be_cmd_if_destroy(adapter, adapter->if_handle, 0);

 be_clear_queues(adapter);

 kfree(adapter->pmac_id);
 adapter->pmac_id = ((void*)0);

 be_msix_disable(adapter);
 return 0;
}
