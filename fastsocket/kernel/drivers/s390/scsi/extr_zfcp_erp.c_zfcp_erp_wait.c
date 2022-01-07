
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; int erp_done_wqh; } ;


 int ZFCP_STATUS_ADAPTER_ERP_PENDING ;
 int atomic_read (int *) ;
 int wait_event (int ,int) ;

void zfcp_erp_wait(struct zfcp_adapter *adapter)
{
 wait_event(adapter->erp_done_wqh,
     !(atomic_read(&adapter->status) &
   ZFCP_STATUS_ADAPTER_ERP_PENDING));
}
