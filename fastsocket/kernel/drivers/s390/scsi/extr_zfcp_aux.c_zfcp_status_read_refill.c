
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int stat_miss; int qdio; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 scalar_t__ zfcp_fsf_status_read (int ) ;

int zfcp_status_read_refill(struct zfcp_adapter *adapter)
{
 while (atomic_read(&adapter->stat_miss) > 0)
  if (zfcp_fsf_status_read(adapter->qdio)) {
   if (atomic_read(&adapter->stat_miss) >= 16) {
    zfcp_erp_adapter_reopen(adapter, 0, "axsref1",
       ((void*)0));
    return 1;
   }
   break;
  } else
   atomic_dec(&adapter->stat_miss);
 return 0;
}
