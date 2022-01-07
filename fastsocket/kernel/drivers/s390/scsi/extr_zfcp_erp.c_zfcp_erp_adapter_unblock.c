
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int status; int dbf; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_set_mask (int ,int *) ;
 scalar_t__ status_change_set (int ,int *) ;
 int zfcp_dbf_rec_adapter (char*,int *,int ) ;

__attribute__((used)) static void zfcp_erp_adapter_unblock(struct zfcp_adapter *adapter)
{
 if (status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED, &adapter->status))
  zfcp_dbf_rec_adapter("eraubl1", ((void*)0), adapter->dbf);
 atomic_set_mask(ZFCP_STATUS_COMMON_UNBLOCKED, &adapter->status);
}
