
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int zfcp_erp_adapter_reopen (struct zfcp_adapter*,int,char*,void*) ;

void zfcp_erp_adapter_shutdown(struct zfcp_adapter *adapter, int clear,
          char *id, void *ref)
{
 int flags = ZFCP_STATUS_COMMON_RUNNING | ZFCP_STATUS_COMMON_ERP_FAILED;
 zfcp_erp_adapter_reopen(adapter, clear | flags, id, ref);
}
