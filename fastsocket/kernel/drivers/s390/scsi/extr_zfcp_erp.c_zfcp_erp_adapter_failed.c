
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_adapter {int dummy; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int zfcp_erp_modify_adapter_status (struct zfcp_adapter*,char*,void*,int ,int ) ;

void zfcp_erp_adapter_failed(struct zfcp_adapter *adapter, char *id, void *ref)
{
 zfcp_erp_modify_adapter_status(adapter, id, ref,
           ZFCP_STATUS_COMMON_ERP_FAILED, ZFCP_SET);
}
